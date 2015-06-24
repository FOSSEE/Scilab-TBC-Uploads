//Exa 3.2
clc;
clear;
close;
format('v',7);

//Given Data :
Q2=1;//KJ/sec or KW
W=0.4;//KW
T2=-30+273;//K
COP=Q2/W;
disp(COP,"COP of refrigerator is : ");
T1=T2*(1+COP)/COP;//K
disp(T1,"Temperature at which heat is rejected in K :  ");
Q1=Q2*(1+COP)/COP;//KW
disp(Q1,"Heat rejected per KW of cooling(KW) :  ");
