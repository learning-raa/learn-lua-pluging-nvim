
help:
	@less Makefile

pull:
	@git pull
force.push:
	@git push -f

savetogit: commitall
	@echo '--> PUSH to GitHub..'
	@git push
commitall: addall
	@echo '--> COMMIT if STATUS allows..'
	@if [ -n "$(shell git status -s)" ] ; then git commit -m 'saving'; else echo '--- nothing to commit'; fi
addall:
	@echo '--> ADD-ALL..'
	@git add .
