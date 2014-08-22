RICH_PREFIX=src/static/js/vendor/famous/rich/

.PHONY: rich-pull rich-push rich-branch rich-update rich-install rich-remote rich-readtree rich-subtree-clean

rich-install: rich-remote rich-readtree

rich-remote:
	git remote add -f rich git@github.com:blitzagency/rich.git
	git checkout -b rich rich/develop

rich-readtree:
	git checkout master
	git read-tree --prefix=$(RICH_PREFIX) -u rich:rich
	git commit -am "rich readtree"

rich-branch:
	-git checkout rich

rich-update: rich-branch
	-git pull

rich-push: rich-subtree-clean rich-update
	git checkout master
	git subtree split --prefix=$(RICH_PREFIX) -b subtree/rich
	git checkout subtree/rich
	-rm -rf src
	-rm -rf .sass-cache
	git checkout rich
	git merge --squash -s subtree --no-commit -X subtree=rich/ -X theirs subtree/rich
	git branch -D subtree/rich

rich-pull: rich-subtree-clean rich-update
	-git checkout rich
	git subtree split --prefix=rich/ -b subtree/rich
	git checkout master
	git merge --squash -s subtree --no-commit -X subtree=$(RICH_PREFIX) -X theirs subtree/rich
	-git commit -am "rich update"
	git branch -D subtree/rich

rich-subtree-clean:
	-git branch -D subtree/rich
