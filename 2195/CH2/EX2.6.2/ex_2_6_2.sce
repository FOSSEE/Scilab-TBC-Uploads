//Example 2.6.2: magnitude and relative error
clc;
clear;
close;
//given data :
R1=36;//ohm
E1=5;//±limiting error for R1
R2=75;//ohm
E2=5;//±limiting error for R2
RT=(R1*R2)/(R1+R2);//ohm(in parallel)
EP1=E1+E2;//±limiting error
EP2=((R1*E1)/(R1+R2))+((R2*E2)/(R1+R2));
ET=EP1+EP2;
etm=(ET/100)*RT;//
disp(etm,"magnitude of limiting error is in ohms (±)")
disp(ET,"percentage relative error is (%) ")

