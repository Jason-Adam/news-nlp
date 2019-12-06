.PHONY: clean bind_kernel 

PROJECT_NAME := $(shell pwd | rev | cut -f1 -d'/' - | rev)

clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

bind_kernel:
	ipython kernel install --user --name=$(PROJECT_NAME)
