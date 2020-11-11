# Citizens Advice Style Ruby

## <sub>v1.0.0</sub>

#### _Nov. xx 2020_

**New features**:

* Cut stable candidate of gem
* Enforced rubocop v1.0 as a minimum as that is now stable
* Began Semver

**Breaking changes**:

* Enforce Ruby 2.7 as a minimum

* Removed/Altered some cop configurations
  * `Layout/LineLength` now won't count rubocop in-line disables (Should try avoid this)
  * `Metrics/MethodLength` doesn't have Max override (Tests are ignored by design)
  * `Metrics/ClassLength` doesn't have Max override (Tests are ignored by design)
