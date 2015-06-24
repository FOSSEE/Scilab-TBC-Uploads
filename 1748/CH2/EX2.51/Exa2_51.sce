//Exa 2.51
clc;
clear;
close;
//Given data :
format('v',5);
disp("Star delta starter :");
ISCbyIFL=6;//ratio of SC current to full load current
Slip=4;//in %
Slip=4/100;//in fraction
TsBYTfl=(1/3)*(ISCbyIFL)^2*Slip;//ratio of starting torque to full load torque
disp("Starting torque is "+string(TsBYTfl*100)+"% of full load value.");
disp("For an auto transformer :");
K=70.70;//in %
K=70.70/100;//in fraction
TsBYTfl=K^2*(ISCbyIFL)^2*Slip;//ratio of starting torque to full load torque
disp("Starting torque is "+string(TsBYTfl*100)+"% of full load torque.");