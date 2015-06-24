// Exa 5.4
clc;
clear;
close;
// given data 
Ton=100;//in mSEC
Toff=200;//in mSEC
BETA=0.2;//unitless
//Let R1=1 Kohm
R1=1;//in Kohm
R2=R1*(1-BETA)/BETA;//in Kohm
// Assuming C=10 uF
C=10;//in uF
R3=Ton*10^-3/(C*10^-6*0.41);//in Kohm
R4=Toff*10^-3/(C*10^-6*0.41);// in Kohm
disp(R1,"Value of R1 in Kohm is ; ")
disp(R2,"Value of R2 in Kohm is ; ")
disp(R3/1000,"Value of R3 in Kohm is ; ")
disp(R4/1000,"Value of R4 in Kohm is ; ")
disp(C,"Value of C in uF is ; ")