%token ID
%token STRING

%%

rules:
	rule
|	rules rule
;

rule:
	term
|	rule "|" term
;

term:
	nonterminal
|	terminal
;

nonterminal:
	"<" ID ">"
;

terminal:
	STRING
;

%%

