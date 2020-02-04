# Authorship Policies

We are deeply thankful to each contributor for helping to make Fatiando
a Terra what it is. Is our spirit to recognize the work made by each
contributor with fairness. For that reason we considered it's necessary to
define authorship policies so we have clear rules for defining when we need to
give credit to other contributors and how to do so.

The main goals of these authorship policies are:

- Recognize contributors efforts on the most fair way.
- Define _contributions_ on a broad way: from writing code to other types of
  intellectual contributions.
- Avoid maintaining a long list of authors in the long term.


## Authors

Any contributor that made any intellectual contribution on the library is
a candidate for consider them as an _author_.
These contributions include:
- being author or coauthor of any Pull Request that has been successfully merged into
`master`,
- review code on any Pull Request,
- make intellectual contributions that were indispensable for the current status of the
  library.

Any candidate can be considered author if they meet the following requirements:
- The last contribution made by the candidate is not older than the previous major
  release (e.g. a candidate who's last contribution was on v1.2.0 can be author of any
  v2.x.x release, but not on any release after or equal to v3.0.0).
- The contributor must fulfill a valid full name, i.e. at least one first and one last
  name.

If all these requirements are met, the contributor **must** add themselves to the
`AUTHORS.md` file located on the library repository, providing their GitHub username,
their full name, and optionally their ORCID number and affiliation.


## Opt out authorship

Contributors have the right of being omitted from the authors' list by not adding
themselves to `AUTHORS.md`.

Neither a full name, an ORCID number nor an affiliation is needed for making
contributions to any library belonging to Fatiando a Terra.
Any contributor has the right to be anonymous if they want to.


## Releasing and publishing

At the time of making a new release or submitting the library to a scientific Journal,
the submitting authors **have the obligation** to add as author to any contributor that
is listed on `AUTHORS.md`.
The submitting authors have the right to omit any contributor that is not listed on
`AUTHORS.md`.

Authors order will be defined based on the number of commits made since the previous
major release.
Authors order can be obtained by running:
```
git shortlog vX.0.0...HEAD -sne
```
where `vX.0.0` is the tag for the previous major release (e.g. v1.0.0 if we are
releasing v2.1.0; v2.0.0 if we are releasing v3.0.0.).

The location of any author that hasn't made any commit should be decided by all
authors of the new release.


### Removing old authors

When creating a new major release, all previous authors that don't satisfy the
previous requirements should be removed from `AUTHORS.md` through a Pull Request.


## Note

These authorship policies may be changed in the future if it's needed.
