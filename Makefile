.PHONY: test test-docker

test:
	PYTHONPATH="${PYTHONPATH:-}:." python test/test.py
	PYTHONPATH="${PYTHONPATH:-}:." python test/test_filters.py

test-docker: Dockerfile.test
	docker build -t traildb_python_docker -f Dockerfile.test .
	docker run -it traildb_python_docker /bin/bash
