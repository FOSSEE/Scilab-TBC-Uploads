//problem 2.8
clc;
clear;
close;
//given data :
format('v',5);
m=3;//No. of phase
Vrotor=100;//in volts
Xo=1;//in ohm/phase
R2=0.2;//in ohm/phase
Eo=Vrotor/sqrt(3);//Rotor phase voltage in volts
S=4;//in %
I2=S/100*Eo/sqrt(R2^2+(S/100*Xo)^2);//in Ampere
disp(I2,"Rotor current in Ampere : ");
//For Max Torque S=R2/Xo
S=R2/Xo;//unitless
disp("For developing maximum torque");
disp(S,"Slip is : ");
I2=S*Eo/sqrt(R2^2+(S*Xo)^2);//in Ampere
disp(I2,"Rotor current in Ampere : ");
