# Proof of concept for automated version release

This POC contains a yaml file that make use of a number of actions and bash scripts to fetch the `package.json` version, and compare it to the current github release version. If the `package.json` version is newer, then it will be used as a new tag.
