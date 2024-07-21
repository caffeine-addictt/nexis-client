# **Contributing**

When contributing to this repository,
please first discuss the change you wish to make via issue, email, or any other method
with the owners of this repository before making a change.

Please note we have a [code of conduct](./.github/CODE_OF_CONDUCT.md);
please follow it in all your interactions with the project.

## Table of Contents

<!-- prettier-ignore-start -->
<!--toc:start-->

1. [Pull Request Process](#pull-request-process)
2. [Issue Report Process](#issue-report-process)
3. [Commit Message Guidelines](#commit-message-guidelines)
4. [Code Quality](#code-quality)
    - [Testing](#testing)
    - [Linting](#linting)

<!--toc:end-->
<!-- prettier-ignore-end -->

## Running the project

1. Create a venv with `python3 -m venv venv`
2. Install dependencies with `make install`
3. You can run the project with `poetry run nexis`

## Pull Request Process

1. Ensure any install or build dependencies are removed before the end of the layer
   when doing a build.
2. Ensure that tests and linting pass.
3. Update the README.md with details of changes to the interface;
   this includes new environment variables, exposed ports,
   valid file locations and container parameters.
4. Increase the version numbers in any examples files and the README.md
   that this Pull Request would represent. The versioning scheme we use is [SemVer](http://semver.org/).
5. You may merge the Pull Request once you have the sign-off of two other developers,
   or if you do not have permission to do that, you may request the second reviewer
   to merge it for you.

## Issue Report Process

1. Go to the project's issues.
2. Select the template that better fits your issue.
3. Read the instructions carefully and write within the template guidelines.
4. Submit it and wait for support.

## Commit Message Guidelines

When committing, commit messages are prefixed with one of the
following depending on the type of change made.

- `feat:` when a new feature is introduced with the changes.
- `fix:` when a bug fix has occurred.
- `chore:` for changes that do not relate to a fix or feature and do not modify
  _source_ or _tests_. (like updating dependencies)
- `refactor:` for refactoring code that neither fixes a bug nor adds a feature.
- `docs:` when changes are made to documentation.
- `style:` when changes that do not affect the code, but modify formatting.
- `test:` when changes to tests are made.
- `perf:` for changes that improve performance.
- `ci:` for changes that affect CI.
- `build:` for changes that affect the build system or external dependencies.
- `revert:` when reverting changes.

Commit messages are also to begin with an uppercase character.
Below list some example commit messages.

```sh
git commit -m "docs: Added README.md"
git commit -m "revert: Removed README.md"
git commit -m "docs: Moved README.md"
```

## Code Quality

### Testing

We use [Pytest](https://docs.pytest.org) to test our code.
Please ensure that tests are updated and pass before merging a Pull Request.

```sh
# To test your code, run:
make test
```

### Linting

We use [Ruff](https://docs.astral.sh/ruff/) and [Prettier](https://prettier.io/)
to ensure that code is consistent and follows our [code style](./.github/CODESTYLE.md).
Please ensure that your code passes linting before merging a Pull Request.

```sh
# To lint your code, run:
make lint

# To fix any linting errors, run:
make format
```
