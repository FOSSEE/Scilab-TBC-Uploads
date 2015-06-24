//Ex10_6

clc;

// Given:
y=5;// in mg labelled sample
V=2000;// volume of mixture in ml
// Formula: x=y*(Si-Sf)/Sf
//Solution:

Si=20000/(5*5);// initial specific activity in counts min^-1 mg^-1
Sf=3000/(.6*10);// final specific activity in counts min^-1 mg^-1
x=y*(Si-Sf)/Sf;// in mg for V amount of volume
//% of penicillin in mixture
p=x*100/V;

printf("The percentage of penicillin in mixture is = %f ",p)
