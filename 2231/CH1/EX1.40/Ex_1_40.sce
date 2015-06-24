//Example 1_40
clc;
clear;close;

//Given data: 
V=230;//V
R1=2;//ohm
R2=5;//ohm
R3=1;//ohm
R4=6;//ohm
R5=5;//ohm
Isqr_t=30;//A^2-s
R=R1+R2*R3/(R2+R3);//ohm(X grounded)
Ifault=sqrt(2)*V/R;//A
tc=Isqr_t/Ifault^2;//s
disp(tc,"Fault clearing time in seconds");

