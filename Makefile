export PERL5LIB=../pegex-pm/lib

COMPILE_COMMAND = perl -MPegex::Compiler -e \
    'print Pegex::Compiler->compile_raw(shift)->to_

all: json.pgx.yaml json.pgx.json

json.pgx.yaml: json.pgx Makefile
	$(COMPILE_COMMAND)yaml' $< > $@

json.pgx.json: json.pgx Makefile
	$(COMPILE_COMMAND)json' $< > $@

clean:
	rm -f json.pgx.*
