#
# Makefile
# ddjima, 2016-12-01 10:09
#
INSTALL_PATH=.
help:
	@echo "		install"
	@echo "		Install python package"

clean:
	find . -name '*.pyc' -exec rm --force {} +
	find . -name '*.pyo' -exec rm --force {} +
	find . -name '*~' -exec rm --force {} +
	rm --force --recursive build/
	rm --force --recursive dist/
	rm --force --recursive *.egg-info

lint:
	flake8 --exclude=.tox

install:
	python ./virtualenv-15.1.0/virtualenv.py temposeqcount && \
	. rnaseqpipe/bin/activate && \
	pip install paver && \
	python setup.py install

	




# vim:ft=make
#
