input = input.txt
output = output.txt

main:
	bison -d LPT1_1703004_Q2b.y
	flex LPT1_1703004_Q2b.l
	gcc LPT1_1703004_Q2b.tab.c lex.yy.c
	./a.out < $(input) > $(output)