.PHONY:	all check test clean

all:
	./rebar compile

docs:
	./rebar doc

check:
	./rebar check-plt
	./rebar dialyze

test:
	@rm -rf .eunit
	@mkdir -p .eunit
	./rebar skip_deps=true eunit

conf_clean:
	@:

clean:
	./rebar clean
	$(RM) doc/*

build_plt:
	@$(REBAR) build-plt

dialyzer:
	@$(REBAR) dialyze


# eof
