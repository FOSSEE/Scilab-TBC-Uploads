//Ex 6.11
clc;
clear;
close;
format('v',6);
T=10;//ms//(Time period)
f0=1/(T*10^-3);//Hz
C=0.05;//micro F//Chosen for the design
//Formula : f0=1/{2*Rf*C*log(1+2*R2/R1)}
Rf=1/(f0*2*C*10^-6*log(1+2))/1000;//kohm//By putting R1=R2 for this case
Rf=round(Rf);//kohm
disp(Rf,"Resistance Rf(kohm)");
disp(C,"Capacitance for the design(micro F)");
