VENV:=venv

ifeq ($(OS),Windows_NT)
BIN:=$(VENV)/Scripts
NUL:=/dev/nul
else
BIN:=$(VENV)/bin
NUL:=/dev/null
endif

PYTHON:=$(BIN)/python

# =================================== DEFAULT =================================== #

default: all

## default: Runs build and test
.PHONY: default
all: build

.PHONY: ensurevenv
ensurevenv:
	@$(PYTHON) --version 2> $(NUL) || { echo "You do not have a python venv"; exit 1; }

# =================================== HELPERS =================================== #

## help: print this help message
.PHONY: help
help:
	@echo 'Nexis - You can run the project with "poetry run nexis"'
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

# =================================== DEVELOPMENT =================================== #

## build: builds the binary
.PHONY: build
build: ensurevenv lint test
	$(BIN)/poetry build

## install: Install the program
.PHONY: install
install: ensurevenv
	npm i
	$(BIN)/pip install poetry
	$(BIN)/poetry install

## test: Test the program
.PHONY: test
test: ensurevenv
	$(BIN)/poetry run pytest -vv

# =================================== QUALITY ================================== #

## tidy: Tidy mod file and format code
.PHONY: format
format: ensurevenv
	npm run lint:fix
	$(BIN)/poetry run ruff format

# https://golangci-lint.run/welcome/install/
## lint: Lint code
.PHONY: lint
lint: ensurevenv
	npm run lint
	$(BIN)/poetry run ruff format --check
