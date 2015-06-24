clc;
clear all;
Pout=200;
Pl=20;
Ap=5;
//part a
ERP=(Pout-Pl)*Ap;
disp(ERP,'effective radiated power in W is:');
//part b
erp=10*log10(ERP/Pout);
disp(erp,'effective radiated power in db is:');

