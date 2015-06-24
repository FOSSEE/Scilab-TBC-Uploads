//Exa 2.48
clc;
clear;
close;
//Given data :
format('v',6);
ISCbyIFL=5;//ratio of SC current to full load current
S=0.04;//Full load slip
//(i) for star delta starter : 
disp("for star delta starter : ");
Ratio=(1/3)*(ISCbyIFL)^2*S;//Ratio of starting torque to full load torque
disp("Starting torque is "+string(Ratio*100)+"% of full load torque.");
//(i) for auto transformer starter :
disp("for auto transformer starter : ") ;
K=50/100;//tappings
Ratio=K^2*(ISCbyIFL)^2*S;//Ratio of starting torque to full load torque
disp("Starting torque is "+string(Ratio*100)+"% of full load torque.");