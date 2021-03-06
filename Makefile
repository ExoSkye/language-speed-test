build:
	mkdir bin/

	as asm.s -o asm.o >/dev/null
	ld asm.o -o bin/asm
	rm asm.o

	gcc c.c -o bin/c

	g++ cpp.cc -o bin/cpp

	rustc rust.rs
	mv rust bin/

	cp python.py bin/python
	chmod +x bin/python
	
	cp ruby.rb bin/ruby
	chmod +x bin/ruby

	cp perl.pl bin/perl
	chmod +x bin/perl

	cp shell.sh bin/shell
	chmod +x bin/shell

run:
	sh execute.sh

clean:
	rm -rf bin/
