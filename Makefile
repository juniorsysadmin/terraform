TERRAFORM ?= terraform

default: plan

get:
	        $(TERRAFORM) get

fmt:
	        $(TERRAFORM) fmt

plan: fmt get
	        $(TERRAFORM) plan $(args) -out terraform.plan

build:
	        $(TERRAFORM) apply terraform.plan
