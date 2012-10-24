VIRT=vbox
QUIET=@

default: box

box:
	veewee $(VIRT) build -n -a logstash-test
	veewee $(VIRT) validate logstash-test
	vagrant basebox export logstash-test

clean:
	veewee $(VIRT) destroy logstash-test