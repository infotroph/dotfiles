
# Setup operations I haven't automated (yet?)


## Install Homebrew

```
curl https://raw.githubusercontent.com/Homebrew/install/master/install > install_homebrew.ruby
# read the script before proceeding!
ruby install_homebrew.ruby
```

Updates. OS X installs these, but brew versions are newer:

```
brew install git python ruby
```

New packages:

```
brew tap homebrew/homebrew-science
brew install \
	exiftool \
	gti \
	imagemagick \
	postgresql \
	python3 \
	reattach-to-user-namespace \
	tmux \
	vtk \
	wget \
	doxygen \
	graphviz
brew cask install qlstephen
```

## Set up Pip

Homebrew installs pip/pip3 as python/python3 dependencies, caveats sections recommend:

```
pip install --upgrade pip setuptools
pip3 install --upgrade pip setuptools wheel
```
Now add new packages:

```
pip3 install awscli csvkit scikit-image
```

## Install R

I download the OS X binary that's a few clicks in from https://r-project.org, then click through the instructions.

TODO 2017-05-15 while setting up PSU simroot machine: Do I need the non-mac fortran and clang versions as claimed by the r-project.org instructions?
Skipping them for now, will revisit if I run into trouble.

Packages:

```{r}
install.packages(c("devtools", "tidyverse"))
```
TODO: collect list of all the R packages to install. Probably start with devtools and tidyverse and go from there.

microbenchmark # for easy speed comparisons of small functions




## Other

* Pandoc?
* LaTeX?
* Fonts?
* Other OS X apps?

TODO: Find and record preference for new Finder windows to show ~, not "All My Files"
