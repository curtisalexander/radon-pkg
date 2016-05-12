# radon-pkg
Utilizes [radon](https://github.com/curtisalexander/radon) to create and setup R packages.

Demonstrates how one can utilize  `make` to create and manage R packages.  Useful for when iteratively creating and modifying an R package on the command line.  As an alternative, could utilize [devtools](https://github.com/hadley/devtools) to manage the workflow within R.

### Examples
```
make pkg            # create an R package
make pkginstall     # install an R package with radon
make pkgremove      # remove an R package with radon
make pkgdel         # delete an R package (delete the tar.gz file)
make clean          # remove an R package and delete the tar.gz file
make all            # create an R package and install
```

### Requirements
* Assumes [radon](https://github.com/curtisalexander/radon) is installed and on the user's `$PATH`.
* Assumes `R` is installed and on the user's `$PATH`.
