clear;
clc;
//Example 10.11
Van=120;
Vap=80;
Vt=0.026;
Ico=0.001;
//Rl=infinity
Av=-(1/Vt)/(1/Van+1/Vap);
printf('\nsmall signal open circuit voltage gain=%.2f\n',Av)
Rl=100;
Av1=-(1/Vt)/(1/Van+1/Vap+1/Rl);
printf('\nsmall signal open circuit voltage gain=%.2f\n',Av1)
Rl=10;
Av2=-(1/Vt)/(1/Van+1/Vap+1/Rl);
printf('\nsmall signal open circuit voltage gain=%.2f\n',Av2)
