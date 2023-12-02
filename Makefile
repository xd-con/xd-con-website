.PHONY: github

clean:
	echo

html:
	cd site && hugo

github: | clean html
	./push_dir_to_repo.py \
	  --branch main \
	  --email sprintbot@sprintbot \
	  --committer "sprintbot" \
	  --message "Update website" \
	  --force \
	     ./site/public git@github.com:xd-con/xd-con.github.io
