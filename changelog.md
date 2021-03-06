# geometry changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## 2.0.0 - [Unreleased]

### Added
- GEOMETRY_INFO array for running functions on enter
- `geometry_jobs`: function showing number of jobs
- `geometry_npm_package_version`: function showing npm/yarn package version (thanks @drager!)
- `geometry_rust_version`: function showing rustc version (thanks @drager!)
- GEOMETRY_DEBUG which helped hunt down lots of errors (thanks @MarioRicalde!)
- New logo and branding by @MarioRicalde!

### Changed
- Right prompt renders asynchronously via `zsh-async`
- Left prompt supports customization via `GEOMETRY_PROMPT`
- Functions read environment variables dynamically
- `geometry_git`: Git stash indicator (thanks @ev-agelos!)

### Deprecated
- Plugins are now simple `geometry_` prefixed functions (based on subnixr/minimal)
- GEOMETRY_PLUGINS{,SECONDARY} are now GEOMETRY_PROMPT and GEOMETRY_RPROMPT
- `GEOMETRY_[COLOR|SYMBOL]_PLUGIN_NAME` and most other environment variables
  - See the readme or `grep GEOMETRY_ functions/*`
- GEOMETRY_GIT_SHOW_{CONFLICTS/TIME/STASHES} no longer exist

### Removed
- Root color for status symbol
- 407 lines of code (from 676 to 269)

### Fixed
- Fix conflict count on non top-level directory

## 1.0.0 - 2017-04-05
### Added
- Change Log file
- Initial release features

[Unreleased]: https://github.com/geometry-zsh/geometry/compare/v1.0.0...HEAD
