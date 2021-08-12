# Citizens Advice Style Ruby

## <sub>v3.0.1</sub>

#### _Aug. 12 2021_

**Fixes**
* Moved the merge exclude rule from rails config to default config

## <sub>v3.0.0</sub>

#### _Jul. 26 2021_

**Breaking changes**:
* Removed all testing based ignores
  * `Lint/ParenthesesAsGroupedExpression` is no longer ignored
  * `Metrics/ClassLength` is no longer ignored
  * `Metrics/BlockLength` has been removed from being ignored in test locations (But is still overridden a few times)
  * `Rails/SkipsModelValidations` is no longer ignored

* Some of `Metrics/BlockLength` overrides which were flagged as rails based are now moved into the core `default.yml`

**Updates**:
* Gem now uses v1.18 of rubocop

## <sub>v2.1.0</sub>

#### _Mar. 6 2021_

**Updates**:
* Gem now uses v1.11 of rubocop

## <sub>v2.0.0</sub>

#### _Feb. 23 2021_

**Breaking changes**:
* Removed all V2 (TOFIX), cops.
  * `Metrics/LineLength` is now set to 140, with no exceptions
  * `Lint/AmbiguousBlockAssociation` is now enabled
  * `Naming/MemoizedInstanceVariableName` is now enabled
  * `Naming/MethodParameterName` has had the redundant ignores removed
  * `Style/MultilineBlockChain` is now enabled

**Fixes**:
* Re-added in `NewCops: enabled` as this is used in rubocop 1.x as well

## <sub>v1.2.0</sub>

#### _Feb. 4 2021_

**New features**:
* Added/Amended `AllCops/Exclude` across both configurations

**Updates**:
* Gem now uses v1.7 of rubocop

## <sub>v1.1.0</sub>

#### _Jan. 15 2021_

**Updates**:
* Gem now uses v1.3 of rubocop

## <sub>v1.0.0</sub>

#### _Nov. 26 2020_

**New features**:

* Cut stable candidate of gem
* Enforced rubocop v1.0 as a minimum as that is now stable
* Began Semver
* Added v2 cop plans for removal / updates

**Breaking changes**:

* Enforce Ruby 2.7 as a minimum

* Removed/Altered some cop configurations
  * `Layout/LineLength` now won't count rubocop in-line disables (Should try avoid this)
  * `Metrics/MethodLength` doesn't have Max override (Tests are ignored by design)
  * `Metrics/ClassLength` doesn't have Max override (Tests are ignored by design)
  * `Layout/MultilineMethodCallIndentation` is no longer ignored (Was previously on specs)
  * `Style/MixinGrouping` is no longer ignored (Was previously on specs)
  * `Metrics/AbcSize` is no longer ignored (As we don't ignore Cyclomatic Complexity)
  