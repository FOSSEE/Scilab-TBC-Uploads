//Exa 2.53
clc;
clear;
close;
//Given data :
format('v',5);
ISCbyIFL=4;//ratio of SC current to full load current
ISbyIFL=2;//ratio of Supply current to full load current
S=2.5;//in %
S=2.5/100;//in fraction
//Formula : ISbyIFL=(1/K^2)*ISCbyIFL
K=sqrt(ISCbyIFL/ISbyIFL);//in fraction
disp(K,"Auto Transormation ratio :");
TsBYTfl=(1/K^2)*(ISCbyIFL)^2*S;//ratio of starting torque to full load torque
disp(TsBYTfl,"Ratio of starting torque to full load torque :");
disp("or Starting torque is "+string(TsBYTfl*100)+"% of full load value.");