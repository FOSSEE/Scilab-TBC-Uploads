//Chapter 17
//Example 17_8
//Page 410

clear;clc;

kva=5000;
x=12;
r=6;

base=input("Input base kva:   ");

perx=base*x/kva;
printf("With reactors: \n");
x1=(perx+r)/2+r;
tx1=x1*x/(x1+x);
sci1=base*100/tx1;
printf("Total %% reactance from generator to fault = %.2f %% \n", tx1);
printf("Short circuit input = %.3f MVA \n\n", sci1/1000);

printf("Without reactors: \n");
tx2=x/3;
sci2=base*100/tx2;
printf("Total %% reactance from generator to fault = %.2f %% \n", tx2);
printf("Short circuit input = %.3f MVA \n\n", sci2/1000);
