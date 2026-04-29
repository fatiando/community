# Fatiando a Terra Project Governance

The purpose of this document is to formalize the governance process used by the
project in both ordinary and extraordinary situations. It is also meant to
clarify how decisions are made, where the decision-making power lies, and the
responsibilities of each role assigned to community members.

## The Project

The Fatiando a Terra Project (The Project) is a community-driven project that
develops and maintains open-source software for geophysics.
Software repositories include those in the [`fatiando`][github] and
[`fatiando-data`][github-data] GitHub organizations.
They are developed openly and hosted on public repositories.
Software developed by The Project is released under the BSD 3-clause (or
similar) open source license.

The Project is developed by a distributed team of developers, called
the Project Contributors (see below).
The Project Community consists of all Contributors and users of The Project.
Contributors work on behalf of the larger Project Community.
We strive to keep the barrier between Contributors and users as low as
possible.

## Governance

These are the **roles** that can be assigned to The Project Community members:

- [Project Leader](#project-leader)
- [Package Maintainer](#package-maintainer)

Additionally, the following **titles** may also be assigned to people who
have been involved in the project as a means of providing credit for their
contributions (without the responsibilities that come with one of the roles
above):

- [Package Author](#package-author)
- [Project Contributor](#project-contributor)
- [Project Founder](#project-founder)

**The individuals currently occupying each role will be listed on our website
[fatiando.org][website].**

### Project Leader

The overall role of the Project Leaders is to ensure, taking input from the
Community, the long-term well-being of the project, both technically and as
a community.
Hence, Project Leaders are expected to take active roles in the project for
extended periods of time.
The Leaders are responsible for planning, organization, and direction of The
Project's operations and programs.
There is an expectation that Leaders will attend regular online meetings and
invest effort in community and organizational strategy, as well as developing
and acting on the long-term vision of The Project.
The Project encourages others to fork the project if they disagree with the
overall direction the Project Leaders are taking.

To become eligible for being a Project Leader, an individual must be a
Project Contributor who has produced contributions that are substantial in
quality and quantity, and sustained over time.
Contributions include, but are not limited to, code, code review,
infrastructure work, community participation, community help/building,
education and outreach, design work, etc.
We want to encourage a diverse array of backgrounds, viewpoints, and talents in
our team.
Potential Project Leaders will be nominated by existing Leaders and voted upon
by the existing Leaders.

If a Project Leader becomes inactive in the project for an extended period of time,
they will be considered for removal from the role.
Before removal, the inactive Leader will be approached to see if they plan on
returning to active participation.
If not, they will be removed immediately upon a vote by the other Project
Leaders.
If they plan on returning to active participation, they will be given a grace
period before reassessment of their situation.

The Project Leaders reserve the right to eject current Leaders if they are
deemed to be actively harmful to the project's well-being, and attempts at
communication and conflict resolution have failed.

### Package Maintainer

The Package Maintainers oversee and manage the development, maintenance,
goals, and scope of a particular software package.
Each of the software packages developed by The Project will have a team of
Package Maintainers.
Their responsibilities are:

* Welcoming new contributors to the software.
* Taking an active role in the development of new features, bug fixes, and
  documentation.
* Reviewing contributions to the software in the form of pull requests, issues,
  and discussions.
* Maintaining the health and viability of the software.
* Leading discussions about the software goals, scope, design, and
  future directions.
* Managing the release of new versions of the software.
* Delegating responsibility for development and review to other Project
  Contributors.
* Recruiting and mentoring new Contributors and Maintainers.

Package Maintainers are appointed by existing Package Maintainers for the
particular software and the Project Leaders.
To be eligible for appointment as a Package Maintainer, an individual must be a
Project Contributor who has produced code contributions to the software that
are substantial in quality and quantity, and sustained over an extended period
of time.
Maintainers can step down from their role at any time.
It is expected that they will notify the Project Leaders and fellow Maintainers
so that a replacement can be appointed if required.

Package Maintainers will have administrative access to the software repository
and package distribution services (PyPI, conda-forge) for which they are
responsible.
It is expected that they will employ standard IT safety procedures to secure
shared passwords and their own accounts (using a password manager, enabling
two-factor authentication, avoiding reuse of passwords, etc).

### Community Manager

The main role of the Community Managers is to breathe life into our Community.
Community Managers are responsible for, among other things, promoting attendance
at regular community calls, managing social media accounts, welcoming new people
to the Community, approaching specific groups for engagement and partnership
with The Project (e.g., Geolatinas, Earth Science Women's Network), putting
together community events, running the user survey, etc.

Community Managers are appointed by the Project Leaders upon suggestion from
the Community or self-nomination by potential candidates.
A newly appointed Community Manager will be mentored in their role by an
existing Community Manager and/or Project Leader.
Community Managers can step down from their role at any time.
It is expected that they will notify the Project Leaders  so that a replacement
can be appointed if required.

Community Managers will have access to the accounts and repositories that are
required to fulfil their roles.
It is expected that they will employ standard IT safety procedures to secure
passwords and account information (using a password manager, enabling
two-factor authentication, avoiding duplication of passwords, etc).

### Package Author

The Package Authors are the official authors and copyright holders for each
software package developed by The Project.
Package Authors are listed in the `AUTHORS.md` file of each software repository.
The processes and rules for becoming a Package Author are laid out in our
[Authorship Guide][authorship].

### Project Contributor

The Project Contributors are anyone who has made a contribution to The Project.
Contributions include, but are not limited to, code, code review,
infrastructure work, community participation, community help/building,
education and outreach, design work, etc.
Anyone can be a Contributor and Contributors can be affiliated with any legal
entity or none.

There are no responsibilities or powers assigned to Project Contributors.
Candidates for the other roles in The Project governance are mostly recruited
from the pool of Project Contributors.

### Project Founder

The Project Founders are the people who played a role in the conceptualization
of The Project.
They hold no special authority in The Project and are included as an
acknowledgement of their contribution.

## Changes to this document

The authority to change the governance model is held by the Project Leaders.
Any changes to the governance model will be done in a consensus building process
between the Project Leaders, Package Maintainers, and the Community.

Suggestions to governance processes can always be raised in the interim through
one of our [communication channels][contact].

## Acknowledgement

Substantial portions of this document were adapted from:

* [SimPEG governance document][simpeg]
* [Jupyter/IPython project governance document][jupyter]
* [NumPy governance document][numpy]
* [SciPy governance document][scipy]

## License

To the extent possible under law, the authors have waived all copyright and
related or neighboring rights to the Fatiando a Terra project governance
document, as per the [CC-0 public domain dedication / license][cc0].

<!-- Links -->
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/
[simpeg]: https://github.com/simpeg/community/blob/main/governance.md
[jupyter]: https://github.com/jupyter/governance/blob/master/governance.md
[numpy]: https://github.com/numpy/numpy/blob/master/doc/source/dev/governance/governance.rst
[scipy]: https://docs.scipy.org/doc/scipy/dev/governance.html
[github]: https://github.com/fatiando
[github-data]: https://github.com/fatiando-data
[contact]: https://www.fatiando.org/contact
[website]: https://www.fatiando.org
[authorship]: https://github.com/fatiando/community/blob/main/AUTHORSHIP.md
