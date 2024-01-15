# Citizens Advice Style Ruby

## v11.0.0

- Include rubocop-performance
- Drop ruby 2.7 support
- Bump dependency versions to latest

## v10.0.1

- Now includes the correct version number

## v10.0.0

**Updates**:

- Remove `spec/` exclude for `Metrics/BlockLength` as this is now a default in rubocop-rspec 2.11+
- Gem now requires version `~> 1.45` of rubocop
- Gem now requires version `~> 2.18` of rubocop-rspec
- Add rubocop-rails as as dependency using `~> 2.17`
- Count arrays and hashes as one-line when calculating method and class length

## v9.0.0

_Jun. 17 2022_

**Updates**:

- Gem now uses v1.30 of rubocop
- Gem now uses v2.11 of rubocop-rspec

## v8.0.0

_May. 5 2022_

**Updates**:

- Gem now uses v1.28 of rubocop
- Gem now uses v2.10 of rubocop-rspec

## v7.0.0

_Feb. 25 2022_

**Updates**:

- Gem now uses v1.25 of rubocop
- Gem now uses v2.8 of rubocop-rspec

## v6.0.0

_Jan. 12 2022_

**Updates**:

- Gem now uses v1.24 of rubocop
- Gem now uses v2.7 of rubocop-rspec
- Removed required ruby version

## v5.0.0

_Dec. 13 2021_

**Updates**:

- Gem now uses v1.23 of rubocop
- (Re)Enabled Rails/HasManyOrHasOneDependent
- Additional exclusions for Rails migrations

**Breaking changes**:

- Requires Ruby 3.0.3
- Includes rubocop-rspec by default

## v4.1.0

_Sep. 23 2021_

**Updates**:

- Gem now uses v1.21 of rubocop

## v4.0.0

_Sep. 14 2021_

**Breaking changes**:

- Removed final undocumented exclusions from `default-rails.yml`
  - Brewfile's shouldn't be monitored in this gem
  - Rails migration's should conform to standard linting

**Fixes**

- Removed the need for git when determining files included in gem

**Updates**:

- Gem now uses v1.20 of rubocop

## v3.0.1

_Aug. 12 2021_

**Fixes**

- Moved the merge exclude rule from rails config to default config

## v3.0.0

_Jul. 26 2021_

**Breaking changes**:

- Removed all testing based ignores

  - `Lint/ParenthesesAsGroupedExpression` is no longer ignored
  - `Metrics/ClassLength` is no longer ignored
  - `Metrics/BlockLength` has been removed from being ignored in test locations (But is still overridden a few times)
  - `Rails/SkipsModelValidations` is no longer ignored

- Some of `Metrics/BlockLength` overrides which were flagged as rails based are now moved into the core `default.yml`

**Updates**:

- Gem now uses v1.18 of rubocop

## v2.1.0

_Mar. 6 2021_

**Updates**:

- Gem now uses v1.11 of rubocop

## v2.0.0

_Feb. 23 2021_

**Breaking changes**:

- Removed all V2 (TOFIX), cops.
  - `Metrics/LineLength` is now set to 140, with no exceptions
  - `Lint/AmbiguousBlockAssociation` is now enabled
  - `Naming/MemoizedInstanceVariableName` is now enabled
  - `Naming/MethodParameterName` has had the redundant ignores removed
  - `Style/MultilineBlockChain` is now enabled

**Fixes**:

- Re-added in `NewCops: enabled` as this is used in rubocop 1.x as well

## v1.2.0

_Feb. 4 2021_

**New features**:

- Added/Amended `AllCops/Exclude` across both configurations

**Updates**:

- Gem now uses v1.7 of rubocop

## v1.1.0

_Jan. 15 2021_

**Updates**:

- Gem now uses v1.3 of rubocop

## v1.0.0

_Nov. 26 2020_

**New features**:

- Cut stable candidate of gem
- Enforced rubocop v1.0 as a minimum as that is now stable
- Began Semver
- Added v2 cop plans for removal / updates

**Breaking changes**:

- Enforce Ruby 2.7 as a minimum

- Removed/Altered some cop configurations
  - `Layout/LineLength` now won't count rubocop in-line disables (Should try avoid this)
  - `Metrics/MethodLength` doesn't have Max override (Tests are ignored by design)
  - `Metrics/ClassLength` doesn't have Max override (Tests are ignored by design)
  - `Layout/MultilineMethodCallIndentation` is no longer ignored (Was previously on specs)
  - `Style/MixinGrouping` is no longer ignored (Was previously on specs)
  - `Metrics/AbcSize` is no longer ignored (As we don't ignore Cyclomatic Complexity)
