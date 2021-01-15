# Citizens Advice Style Ruby

## <sub>v1.1.0</sub>

#### _Jan. 15 2021_

**Updates**:
* Gem now uses version 1.3 of rubocop

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
  