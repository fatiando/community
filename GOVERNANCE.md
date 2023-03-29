# Fatiando a Terra Project Governance

The purpose of this document is to formalize the governance process used by the
project in both ordinary and extraordinary situations. It is also meant to
clarify how decisions are made, where the decision making power lies, and the
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
Contributors work on behalf of and are responsible to the larger Project
Community.
We strive to keep the barrier between Contributors and users as low as
possible.

## Governance

> This section describes the governance and leadership model of The Project.

These are the roles that can be assigned to The Project Community members:

- [Steering Council Member](#steering-council)
- [Benevolent Dictator For Life (BDFL)](#benevolent-dictator-for-life-bdfl)
- [Community Manager](#community-manager)
- [Package Maintainer](#package-maintainer)
- [Package Developer](#package-developer)

Additionally, the following titles may also be assigned to people who
have been involved in the project as a means of providing credit for their 
contributions (without the responsibilities that come with one of the roles 
above):

- [Package Author](#package-author)
- [Project Contributor](#project-contributor)
- [Project Founder](#project-founder)

**The individuals currently occupying each role will be listed on our website
[fatiando.org][website].**

### Steering Council

The overall role of the Steering Council is to ensure, through working with the
BDFL and taking input from the Community, the long-term well-being of the
project, both technically and as a community.
It is expected that all communication between the Council will be carried out
in the open through one of The Project's [communication channels][contact].

The Council is responsible for planning, organization, and direction of The
Project's operations and programs.
There is an expectation that Steering Council members will attend regular
online meetings and invest effort in community and organizational strategy, as
well as developing and acting on the long-term vision of The Project.
The Steering Council may delegate their authority on a particular decision or
set of decisions to any other Contributor at their discretion.
The Project encourages others to fork the project if they disagree with the
overall direction the Council is taking.

To become eligible for being a Steering Council Member, an individual must be a
Project Contributor who has produced contributions that are substantial in
quality and quantity, and sustained over at least one year.
Contributions include, but are not limited to, code, code review,
infrastructure work, community participation, community help/building,
education and outreach, design work, etc.
We want to encourage a diverse array of backgrounds, viewpoints, and talents in
our team.
Potential Council Members will be nominated by existing Council Members and
voted upon by the existing Council.
Based on a successful vote, the newly elected Member is invited to serve in
that capacity.
A newly elected Member will be mentored in their role by an existing Council
Member (appointed by the Council) until they feel that the mentorship is no
longer required.

> The initial Steering Council was appointed by the BDFL (Leonardo Uieda) in
> 2022.

If a Council member becomes inactive in the project for a period of one year,
they will be considered for removal from the Council.
Before removal, the inactive Member will be approached by the BDFL to see if
they plan on returning to active participation.
If not, they will be removed immediately upon a Council vote.
If they plan on returning to active participation, they will be given a grace
period of one year.
If they don't return to active participation within that time period, they will
be removed by vote of the Council.
Former Council members will be listed on the project website, acknowledging the
period during which they were active in the Council.

The Council reserves the right to eject current Members if they are deemed to
be actively harmful to the project's well-being, and attempts at communication
and conflict resolution have failed.

### Benevolent Dictator For Life (BDFL)

The Project will have a BDFL (Benevolent Dictator for Life).
The BDFL is chair of the Steering Council (see below) and has the same
responsibilities of other Council members.
In addition:

* As *Dictator*, they, have the authority to make all final decisions for The
  Project.
* As *Benevolent*, they, in practice, choose to defer that authority to the
  consensus of the Community and Steering Council.

It is expected that the BDFL will only rarely assert their final authority.
Because it is rarely used, we refer to the BDFL's final authority as a
"special" or "overriding" vote.
When it does occur, the BDFL's override typically happens in situations where
there is a deadlock in building consensus among the Community.

The BDFL can step down at any time, and acting in good faith, will also listen
to serious calls to do so.
The BDFL can appoint their successor, but it is expected that the Steering
Council and the Community will be consulted on this decision.
If the BDFL is unable to appoint a successor, the Steering Council will make
this decision, preferably by consensus but, if needed, by a majority vote.

### Community Manager

The main role of the Community Managers is to breath life into our Community.
Community Managers are responsible for, among other things,
promoting attendance at regular community calls, managing social media
accounts, welcoming new people to the Community, approaching specific groups
for engagement and partnership with The Project (e.g., Geolatinas, Earth
Science Women's Network), putting together
community events, running the user survey, etc.
Of course, no single Community Manager will be responsible for all of these
activities.
Sub-committees can be formed at the discretion of the current Community
Managers to delegate responsibility for certain activities to other Project
Contributors.
Community Managers are appointed by the Steering Council upon suggestion from
the Community or self-nomination by potential candidates.
A newly appointed Community Manager will be mentored in their role by an
existing Community Manager and/or Steering Council Member until they feel that
the mentorship is no longer required.

Community Managers will have administrative access to the accounts and
repositories that are required to fulfil their roles.
It is expected that they will employ standard IT safety procedures to secure
passwords and account information (using a password manager, enabling
two-factor authentication, avoiding duplication of passwords, etc).

### Package Maintainer

The Package Maintainers oversee and manage the development, maintenance,
goals, and scope of a particular software package.
Each of the software packages developed by The Project will have a team of
Package Maintainers.
Their responsibilities are:

* Welcoming new contributors to the software.
* Reviewing contributions to the software in the form of pull requests, issues,
  and discussions.
* Maintaining the health and viability of the software.
* Leading discussions about the software goals, scope, design, and 
  future directions.
* Managing the release of new versions of the software.
* Delegating responsibility for development and review to other Project
  Contributors.
* Recruiting and mentoring new Developers and Maintainers.

Package Maintainers are appointed by existing Package Maintainers for the
particular software upon consultation with the Steering Council.
To be eligible for appointment as a Package Maintainer, an individual must be a
Project Contributor who has produced code contributions to the software that
are substantial in quality and quantity, and sustained over at least one year.
The Steering Council can also appoint a Package Maintainer in special
circumstances, for example if a software has no currently acting Maintainer.
Maintainers can step down from their role at any time.
It is expected that they will notify the Steering Council and fellow
Maintainers with at least one month notice so that a replacement can be
appointed if required.

Package Maintainers will have administrative access to the software repository
and package distribution services (PyPI, conda-forge) for which they are
responsible.
It is expected that they will employ standard IT safety procedures to secure
shared passwords and their own accounts (using a password manager, enabling
two-factor authentication, avoiding duplication of passwords, etc).

### Package Developer

The Package Developers are the ones who regularly handle most of the code 
and documentation development for each package in The Project.
Each of the software packages developed by The Project will have a team of
Package Developers.
Their responsibilities are:

* Welcoming new contributors to the software.
* Reviewing contributions to the software in the form of pull requests, issues,
  and discussions.
* Participating in discussions about the software goals, scope, design, and 
  future directions.
* Taking an active role in the development of new features, bug fixes, and 
  documentation.
* Mentoring new Package Developers.

Package Developers are appointed by existing Package Maintainers and Developers 
for the particular software at their discretion.
To be eligible for appointment as a Package Developer, an individual must be a
Project Contributor who has produced regular code or documentation contributions 
to the software.
Developers can step down from their role at any time.
It is expected that they will notify the Package Maintainers and fellow
Developers promptly when deciding to step down.
Package Developers who become inactive for a period of one year or more may be 
removed from their role by the Package Maintainers.

Package Developers will have write (`git push`) access to the software repository.
It is expected that they will employ standard IT safety procedures to secure
their own accounts (using a password manager, enabling two-factor authentication, 
avoiding duplication of passwords, etc).

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

We will hold an annual meeting dedicated to discussions of The Project
governance.
At these meetings, we will review governance documents, including this
document, and the overall goals and direction of The Project.
Anyone is welcome to join these meetings.

The authority to change the governance model is held by the Steering Council.
Any changes to the governance model will be done in a consensus building
process between the Steering Council, BDFL, Project Contributors and the
Community.

Suggestions to governance processes can always be raised in the interim through
one of our [communication channels][contact] or directly to a member of the
Steering Council.

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
[scipy]: https://docs.scipy.org/doc/scipy/reference/dev/governance/governance.html
[github]: https://github.com/fatiando
[github-data]: https://github.com/fatiando-data
[contact]: https://www.fatiando.org/contact
[website]: https://www.fatiando.org
[authorship]: https://github.com/fatiando/community/blob/main/AUTHORSHIP.md
