//Exa 2.52
clc;
clear;
close;
//Given data :
format('v',5);
V=400;//in volt
S=3.5;//in %
S=3.5/100;//in fraction
VL=92;//in volts
//ISC=(V/VL)*IFL;//in Ampere
ISCbyIFL=V/VL;//ratio of SC current to full load current
//2*IFL=K^2*ISC imples that 2*IFL=K^2*(V/VL)*IFL
K=sqrt(2/(V/VL));//in fraction
disp(K*100,"Necessary tapping(in %) :");
TsBYTfl=K^2*(ISCbyIFL)^2*S;//ratio of starting torque to full load torque
disp("Starting torque is "+string(TsBYTfl*100)+"% of full load value.");