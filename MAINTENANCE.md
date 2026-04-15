# Maintainers Guide

> If you want to get involved in the project, you may want to read the
> [Contributing Guide](CONTRIBUTING.md) instead.

**This guide documents our procedures and policies for project maintenance
tasks**, including managing our GitHub repository branches, pull requests,
continuous integration, releasing, and instructing users on citation practices.


## Contents

* [Onboarding](#onboarding)
* [Branches](#branches)
* [Reviewing and merging pull requests](#reviewing-and-merging-pull-requests)
* [Continuous Integration](#continuous-integration)
* [Making a Release](#making-a-release)
* [Citations](#citations)


## Onboarding

Current maintainers are responsible for onboarding new maintainers and getting them
up to speed with our processes.

Start by opening an issue in the repository titled "Onboarding {maintainer} as
maintainer". Use the following template:

> Checklist for the new maintainer:
>
> - [ ] Read the [`GOVERNANCE.md`](GOVERNANCE.md) and [`MAINTENANCE.md`](MAINTENANCE.md) and make sure to understand your new responsibilities. Ask any questions you might have.
> - [ ] Add yourself to the `pyproject.toml` file in the repo (so your name show up in PyPI).
> - [ ] Double check you are using a **unique strong password** and have **2FA enabled** on the following services (we also recommend using a password manager):
>     - [ ] GitHub
>     - [ ] PyPI
>     - [ ] TestPyPI
>     - [ ] Zenodo
>
> Checklist for the current maintainer:
>
> - [ ] Add them to the appropriate **GitHub Team** to grant admin access to the repository (e.g. `{package}-maintainers`).
> - [ ] Add them as package maintainers on **PyPI** and **TestPyPI**.
> - [ ] Add them as maintainer in the **conda-forge feedstock** repository.
> - [ ] Add them to **Zenodo**. Go to the [Fatiando a Terra community](https://zenodo.org/communities/fatiando/) in Zenodo and add the new member as *Curator*.
> - [ ] Make them aware of these invitations, since most of them expire after a few days.
> - [ ] When a new package release is required, arrange a video call to walk them through the entire release process.

Follow the instructions in the issue and close it when all boxes have been
checked.


## Branches

* *main*: Always tested and ready to become a new version. Don't push directly to this
  branch. Make a new branch and submit a pull request instead.
* *gh-pages*: Holds the HTML documentation and is served by Github. Pages for the master
  branch are in the `dev` folder. Pages for each release are in their own folders.
  **Automatically updated by GitHub Actions** so you shouldn't have to make commits here.


## Reviewing and merging pull requests

A few guidelines for reviewing:

* Always **be polite** and give constructive feedback.
* Welcome new users and thank them for their time, even if we don't plan on merging the
  PR.
* Don't be harsh with code style or performance. If the code is bad, either (1) merge
  the pull request and open a new one fixing the code and pinging the original submitter
  (2) comment on the PR detailing how the code could be improved. Both ways are focused
  on showing the contributor **how to write good code**, not shaming them.

Pull requests should be **squash merged**.
This means that all commits will be collapsed into one.
The main advantages of this are:

* Eliminates experimental commits or commits to undo previous changes.
* Makes sure every commit on master passes the tests and has a defined purpose.
* The **maintainer writes the final commit message**, so we can make sure it's good and
  descriptive.


## Continuous Integration

We use GitHub Actions continuous integration (CI) services to build and
test the project on Windows, Linux, and Mac.
The configuration files for this service are in `.github/workflows`.

The CI jobs include:

* Running the test suite on multiple combinations of OS, Python version,
  with and without optional dependencies.
* Running Ruff to check the code for style.
* Building the documentation to make sure it works.
* Pushing the built documentation HTML to the `gh-pages` branch.
* Upload source and wheel distributions to TestPyPI (on pushes to *main*) and PyPI
  (on releases).

This way, most day-to-day maintenance operations are automatic.


## Making a Release

We try to automate the release process as much as possible.
GitHub Actions handles publishing new releases to PyPI and updating the documentation.
The version number is set automatically from the git tag using [setuptools-scm](https://github.com/pypa/setuptools_scm).
There are a few steps that still must be done manually, though.

To start a new release:

1. Create an issue with the "Release checklist" template
   (source [here](https://github.com/fatiando/.github/blob/main/.github/ISSUE_TEMPLATE/release-checklist.md)).
2. Follow the steps in the checklist.

You can also watch this recording of Leo walking through the process of
releasing Verde v1.7.0 from March 2022: https://youtu.be/JNMcMuMYn8E

To complete the entire process, you'll need:

1. ["Write" permission](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/repository-roles-for-an-organization#permissions-for-each-role)
   (or greater) on the GitHub repository.
2. Be a maintainer on the conda-forge recipe.
3. Write access to the Zenodo entry for the package.
   We have a shared Fatiando account in Zenodo that should be used to upload new releases or create new packages.


## Citations

The citation for a package that doesn't have an associated paper will be the
Zenodo DOI for all versions. This citation will include everyone who has
contributed to the project and met our [authorship criteria](AUTHORSHIP.md).

Include the following text in the `doc/citing.rst` file (or `CITATION.rst` if
it exists):

```
This is research software **made by scientists**. Citations help us justify the
effort that goes into building and maintaining this project.

If you used this software in your research, please consider
citing the following source: https://doi.org/10.5281/zenodo.3530749

The link above includes full citation information and export formats (BibTeX,
Mendeley, etc).
```

If the project has been publish as an academic paper (for example, on
[JOSS](https://joss.theoj.org)), **update the `doc/citing.rst` file (or
`CITATION.rst`) to point to the paper instead of the Zenodo archive**.

```
If you used this software in your research, please consider citing the
following publication:

    <full citation including authors, title, journal, DOI, etc>

This is an open-access publication. The paper and the associated reviews can be
freely accessed at: https://doi.org/<INSERT-DOI-HERE>

The link above includes full citation information and export formats (BibTeX,
Mendeley, etc).
```
