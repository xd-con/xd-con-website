.PHONY: github

clean:
	echo

html:
	cd site && hugo
	echo "xd-con.org" > site/public/CNAME
	touch site/public/.nojekyll

github: | clean html
	./push_dir_to_repo.py \
	  --branch gh-pages \
	  --email sprintbot@sprintbot \
	  --committer "sprintbot" \
	  --message "Update website" \
	  --force \
	     ./site/public git@github.com:xd-con/xd-con.org
