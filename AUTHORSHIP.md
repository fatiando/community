# Authorship guidelines for academic papers and software archives

First of all, we are deeply thankful to everyone who has helped make Fatiando a
Terra what it is today. Our goal for this document is to establish guidelines
for giving credit to contributors for their work.
To do so, we will attempt to define:

- Fair and diverse ways of providing recognition for contributors' efforts.
- Define _contributions_ in a broad way: writing code and/or documentation,
  providing ideas, fostering the community, etc.

The following are the ways in which individuals who have contributed will be
recognized. 

> **Note**: These policies are not set in stone and may be changed to
> accommodate the growth of the project or the preferences of the community.

**This document applies to all parts of the Fatiando a Terra project.**


## Changelog for each release

Every time we make a release, everyone who has made a commit to the repository
since the previous release will be mentioned in the changelog entry. If their
full name is available on GitHub, we will use it. Otherwise, we will use the
GitHub handle. This is a way of saying "Thank you".


## The `AUTHORS.md` file

Anyone who has contributed a pull request to the project is welcome to **add
themselves to the `AUTHORS.md` file**. This file lives in the repository and is
packaged with distributions. 

This is an optional process and is **opt-in**. Names and affiliations will be
sourced from this file for publishing source code archives.


## Authorship on Zenodo archives of releases

Anyone who has contributed to the repository (i.e., appears on `git log`) will
be included as an author on the Zenodo source code archive of new releases.

To be included as an author, you must add the following to the `AUTHORS.md`
file of the repository:

1. Full name
2. Affiliation (if omitted, we will use "Unaffiliated")
3. ORCID (optional)

The first author will be "Fatiando a Terra Project".
Other authors will be listed in alphabetical order by last name.
The following statement will also be included in the description:

> Note: Authors are listed in alphabetical order by last name.

If you have contributed and **do not wish to be included** in Zenodo archives,
there are a few options:

1. Don't add yourself to `AUTHORS.md`
2. Remove yourself from `AUTHORS.md`
3. Indicate next to your name on `AUTHORS.md` that you do not wish to be
   included with something like `(not included in Zenodo)`.


## Scientific publications (papers)

We aim to write academic papers for most of your software packages. Ideally, we
will publish updated papers for major changes or large new components of the
package.

To be included as an author on the paper, you must satisfy the following
criteria:

1. Have made a contribution to the repository or significant non-coding
   contributions.
2. Add your full name, affiliation, and (optionally) ORCID to the paper. These
   can be submitted by pull requests to the corresponding paper repository.
3. Write and/or read and review the manuscript in a timely manner and provide
   comments on the paper (even if it's just an "OK", but preferably more).

If project (collective) authorship is allowed by the journal:

The first author will be "Fatiando a Terra Project".
Other authors will be listed in alphabetical order by last name.
A statement will also be included about the author order.

Otherwise:

The order of authors will be defined by the number of commits authored 
since the previous major release that has an associated paper 
(`git shortlog vX.0.0...HEAD -sne`). 
The order of any author who hasn't made any commits will be decided by 
all other authors.

In both cases, the order can also be changed on a case-by-case basis.
