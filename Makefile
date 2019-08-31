obj-m := awusb.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) KBUILD_EXTMOD=$(PWD) modules
clean:
	$(MAKE) -C $(KDIR) KBUILD_EXTMOD=$(PWD) clean
	rm -rf Module.markers module.order module.sysvers 
	
