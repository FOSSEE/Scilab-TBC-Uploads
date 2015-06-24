//Ex10_7

clc;

// Given:
y=2;// in ml labelled sample
V=1000;// volume of mixture in ml
BC=100/20;// 100 counts for 20 min


// Formula: x=y*(Si-Sf)/Sf

//Solution:

Si=(2500-BC)/(2);// initial specific activity in counts min^-1 mg^-1
Sf=(600-BC)/(3);// final specific activity in counts min^-1 mg^-1
x=y*(Si-Sf)/Sf;// in mg for V amount of volume
//% of iodine in mixture
i=x*100/V;

printf("The percentage of iodine in mixture is = %f ",i)

//NOte: Backward counts are taken to be 100 counts for 10 min in the solution given in textbook
