//Exa 9.8
clc;
clear;
close;
//given data
Im=100;//in mA
Vr=7;//in volts
R2=10;//in kohm
Vsense=0.7;//in volts
//using equation Vo=((R1+R2)/R2)*Vr
//for Vo=10 volts assuming R2=10kohm
disp("Eqn is given by Vo=((R1+R2)/R2)*Vr")
Vo=10;//in volts
R1=((Vo*R2)/Vr)-R2//it gives 3R2=7R1;
disp(R1,"Value of resistance R1(in kohms):  ")
//now let output voltage is 15 volts
Vo=15;//in volts
R1=((Vo*R2)/Vr)-R2//it gives 3R2=7R1;
disp(R1,"Value of resistance R1(in kohms):  ")
R3=(R1*R2)/(R1+R2);
disp(R3,"value of resistance R3 in kohms : ")
Rcl=Vsense/(Im*10^-3);//in ohms
disp(Rcl,"Value of Rcl is ohms is : ");
