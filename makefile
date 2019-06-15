all: calc

calc: calcasm.o
	ld -o calc calcasm.o

calcasm.o: calcasm.s
	as -o calcasm.o calcasm.s

clean:
	$(RM) calc
	$(RM) *.o
