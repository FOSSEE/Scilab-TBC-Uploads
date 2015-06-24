clear;
clc;
//Example 10.10
Vt=0.026;
Van=120;
Vap=80;
Av=-(1/Vt)/(1/Van+1/Vap);
printf('\nsmall signal open circuit voltage gain=%.2f\n',Av)
