//Ex:88
clc;
clear;
close;
F1=2;
F2=10;
F3=15;
F4=20;
G1=100;
G2=10;
G3=10;
F=F1+(F2-1)/G1+(F3-1)/(G1*G2)+(F4-1)/(G1*G2*G3);
f=10*log(F)/log(10);//noise figure in db
printf("The noise figure=%f db",f);