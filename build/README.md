# Build scripts for container definition files

This folder contains scripts and other files to create (or assist in creating) definition files needed to build Rocker container images.

## Automatic update of container definition files

The Dockerfiles for pre-build images will be generated by executing the scripts in the following order. It will also generate the `docker-bake.json` files that can be used to build the container images. `make-matrix.R` will generate files containing the matrix used in GitHub Actions.

1. `./build/make-stacks.R`
2. `./build/make-dockerfiles.R`
3. `./build/make-bakejson.R`
4. `./build/make-matrix.R`

These scripts are run daily by GitHub Actions and automatically create a Pull Request if the run results in a variance from the default branch. For example, check the PR when R4.1.1 was released. <https://github.com/rocker-org/rocker-versioned2/pull/213>

## Reports of built images

Since 2021-08-10, the information of images built from this repository will be registered in [the Wiki](https://github.com/rocker-org/rocker-versioned2/wiki) automatically.

Running `make inspect-image-all` (requires `docker`), then `make report-all` (requires R >= 4.1.0 and some packages) will generate reports about rocker images, in `reports/` directory (ignored by git). The template for the reports is `build/reports/template.Rmd` and the script for giving variables to the template is `./build/knit-report.R`.

The wiki HOME(`Home.md`) is generated from `build/reports/wiki_home.Rmd`.
