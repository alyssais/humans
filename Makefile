.PHONY: all install

# Customisable
SCHEDULE=@hourly # any valid cron expression

# Non-customisable
path=$(PWD)/humans
job=$(SCHEDULE)  $(path)
tmp:=$(shell mktemp)

all:
	# no-op
	# specified so that `make && make install` won't accidentally install twice

install:
	-crontab -l 2> /dev/null > $(tmp)
	@if grep -Eq "/humans$$" $(tmp); then \
		echo "\033[1;33mWARN: crontab already contains a reference to humans."; \
		echo "This is likely to result in the job being run more often than" \
			"expected.\033[0m"; \
	fi
	echo "$(job)" >> $(tmp)
	crontab $(tmp)
