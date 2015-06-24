//Chapter 17
//Example 17_7
//Page 409

clear;clc;

mva1=1500;
mva2=1200;
v=33;
x=1;

base=input("Base MVA:  ");
per_x1=base*100/mva1;
per_x2=base*100/mva2;
printf("%% reactance of station A = %.2f %% \n\n", per_x1);
printf("%% reactance of station B = %.2f %% \n\n", per_x2);

per_xt=base*1000*x/10/v^2;
printf("%% reactance of interconnector = %.2f %% \n\n", per_xt);

x1=per_x1+per_xt;
tx1=x1*per_x2/(x1+per_x2);
scmva1=base*100/tx1;

x2=per_x2+per_xt;
tx2=x2*per_x1/(x2+per_x1);
scmva2=base*100/tx2;

printf("FAULT ON STATION A: \n\n");
printf("Total %% reactance upto fault point F2 = %.2f %% \n\n", tx2);
printf("Short circuit MVA = %.2f \n\n", scmva2);

printf("FAULT ON STATION B: \n\n");
printf("Total %% reactance upto fault point F1 = %.2f %% \n\n", tx1);
printf("Short circuit MVA = %.2f \n\n", scmva1);

