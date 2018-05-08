.PHONY: default
default:
	$(MAKE) -C src
	$(MAKE) -C examples/tgunzip

.PHONY: %
%:
	$(MAKE) -C src $@
	$(MAKE) -C examples/tgunzip $@
