#!/bin/bash
#
# Deploy PRs to registered repositories updating the contributing files.
# Only makes the PRs if on the master branch

# To return a failure if any commands inside fail
set -e

DEPLOY=deploy_repo
PATCH=patch-by-travis-bot
BRANCH=travis_contributing_update_bot_$TRAVIS_COMMIT

for repo in $REPOSITORIES; do
    echo ""
    echo "Updating repository $repo ..."
    echo "#############################################################################"
    echo ""

    git clone https://${GITHUB_TOKEN}@github.com/fatiando-bot/$repo.git $DEPLOY 2>&1 >/dev/null
    cd $DEPLOY

    git remote add upstream https://github.com/fatiando/$repo.git
    git pull upstream master

    git config user.email "fatiando@gmail.com"
    git config user.name "Fatiando a Terra Bot"

    git checkout -b $BRANCH

    for file in $TRACKED_FILES; do
        echo "Patch changes to $file"
        diff --new-file --unified $file ../$file > $PATCH || true
        patch $file < $PATCH
        rm $PATCH
    done
    git diff
    git add .
    changed=$(git diff --name-only --staged)
    if [ "$changed" ]; then
        cat << EOF > message.txt
Update files from fatiando/contributing

Changes have been made in https://github.com/fatiando/contributing to:
$changed
Update the copies in this repository to match.
See https://github.com/fatiando/contributing/commit/$TRAVIS_COMMIT
EOF
        git commit --file=message.txt
        if [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" == "master" ]; then
            echo "Pushing and making a pull request"
            git push -u origin $BRANCH 2>&1 >/dev/null
            hub pull-request --file message.txt --base "fatiando:master" --head "fatiando-bot:$BRANCH"
        else
            echo "Not pushing since this is a pull request."
        fi
        rm message.txt
    else
        echo "Nothing to commit."
    fi

    cd ..
    rm -rf $DEPLOY

    echo DONE
done

set +e
