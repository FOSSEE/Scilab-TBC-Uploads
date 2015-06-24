//Ex 1.21
clc;clear;close;
format('v',6);
AQ2byA1=0.5;
AQ3byA1=0.25;
AQ4byA1=0.125;
VBE=0.7;//V
VCC=15;//V
R=20;//kohm
IC1=(VCC-VBE)/R;//mA
IC2=IC1*AQ2byA1;//mA
IC3=IC1*AQ3byA1;//mA
IC4=IC1*AQ4byA1;//mA
disp(IC4,IC3,IC2,"Value of current IC2, IC3 & IC4 is (mA) : ");
//Value of IC4 is displayed wrong in the textbook.
