all: calc print

print: print.o
	ld -o print print.o
print.o:
	as -o print.o print.s

calc: calcasm.o
	ld -o calc calcasm.o

calcasm.o: calcasm.s
	as -o calcasm.o calcasm.s

clean:
	$(RM) calc
	$(RM) *.o
	$(RM) print
