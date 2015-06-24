//Exa 2.50
clc;
clear;
close;
//Given data :
format('v',6);
ISCbyIFL=5;//ratio of SC current to full load current
Slip=5;//in %
Slip=5/100;//in fraction
//Formula : 3*IFL=K^2*ISC
K=sqrt(1/(ISCbyIFL/3));//unitless
TsBYTfl=K^2*(ISCbyIFL)^2*Slip;//ratio of starting torque to full load torque
disp("Starting torque is "+string(TsBYTfl*100)+"% of full load torque.");