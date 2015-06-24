//Exa 5.9
clc;
clear;
close;
format('v',8);

//Given Data :
deltaQ=850;//KJ
T1=523;//Kelvin
T2=873;//Kelvin
T0=288;//Kelvin
dQ_by_dT=100;//KJ/K
deltaS=integrate('100/T','T',T1,T2);//KJ/K
deltaQ=integrate('100','T',T1,T2);//KJ
disp(deltaQ,"Total heat abstracted in KJ : ");
A=deltaQ-T0*deltaS;//KJ
disp(A,"Availability in KJ : ");
Loss=deltaQ-A;//KJ
disp(Loss,"Loss of availability in KJ : ");
