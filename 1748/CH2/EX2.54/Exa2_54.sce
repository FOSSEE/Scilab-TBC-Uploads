//Exa 2.54
clc;
clear;
close;
//Given data :
format('v',6);
ISCbyIFL=4;//ratio of SC current to full load current
S=3;//in %
S=3/100;//in fraction
TsBYTfl=1/4;//ratio of starting torque to full load torque
//Formula : TsBYTfl=ISCbyIFL^2*K^2*S
K=sqrt(TsBYTfl/(ISCbyIFL^2*S));//in fraction
disp(K*100,"Auto Transormation ratio(in %) :");