#!/bin/bash
#
# Deploy PRs to registered repositories updating the contributing files.

# To return a failure if any commands inside fail
set -e

DEPLOY=deploy_repo
PATCH=patch-by-travis-bot
BRANCH=travis_contributing_update_bot

for repo in $REPOSITORIES; do
    echo ""
    echo "Updating repository $repo ..."
    echo "#############################################################################"
    echo ""

    git clone https://${GITHUB_TOKEN}@github.com/$repo $DEPLOY 2>&1 >/dev/null
    cd $DEPLOY

    # Configure git to a dummy Travis user
    git config user.email "travis@nothing.com"
    git config user.name "TravisCI"

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
EOF
        git commit --file=message.txt
        if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
            echo "Pushing and making a pull request"
            #git push -u origin $BRANCH 2>&1 >/dev/null
            #hub pull-request --file=message.txt
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
