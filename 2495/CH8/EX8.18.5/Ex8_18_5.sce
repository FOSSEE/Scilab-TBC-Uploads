clear
clc
n=2;//
F=96500;//
DelH=-217780;//in J
T=273;//in K
E=1.015;//in V
dEdT_p=(1/T)*(E+(DelH/(n*F)));//
printf('dEdT_p=%.3f*10^-4 V/K',dEdT_p/10^-4) 

//There are some errors in the solution given in textbook
//page 483
