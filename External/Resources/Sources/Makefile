all: ../Library/win64/libexternal.a

../Library/win64/libexternal.a: libexternal.a
	mkdir -p ../Library/win64/
	cp libexternal.a ../Library/win64/.

libexternal.a: external.o
	ar -ru $@ $^

external.o: external.f
	gfortran -c $^ -o $@

clean:
	rm -rf external.o libexternal.a
