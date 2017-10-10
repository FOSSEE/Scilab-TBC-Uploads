clc 
V= 100 //supply voltage in volts
f=50 //frequency in Hz
p=6 //number of poles
Rs=0.6 //parameters in ohm 
Rr=0.45 //parameters in ohm
Xr=1.2 //parameters in ohm
Xs=1.2 //parameters in ohm
Xm=45 //parameters in ohm
Sm=1
R=0.4495 

//solution
Re=(((Rs^2)+(Xs+Xr)^2)*Sm-Rr) //external resistance in ohm
Ns=1000
N=poly(0,'N')
a=1-(((((Rs^2)+(Xs+Xr)^2)*((Ns-N)/Ns)-Rr))/(4.5*R))
printf('\n\n The Ratio of External Resistance=%0.1f\n\n',Re)
disp(a,'Duty Ratio alpha is ')
//The answer provided in the textbook is wrong
