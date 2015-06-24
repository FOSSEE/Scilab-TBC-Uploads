
//To Determine the motor current and torque for a particular firing angle
//Page 242
clc;
clear;
P=15*735.5; //Power Rating of the Motor
Raw=0.2; //Combined Armature and Field winding resistance
N=1000; //Speed
K=0.03; //Motor Constant
a=30; //Firing Angle
E=250; //Supply Voltage

//Semi Converter
w=2*%pi*N/60; //Angular Frequency
Vas=sqrt(2)*E*(1+cosd(a))/%pi;
Ias=Vas/(Raw+(K*w)); //Armature Current
Tas=K*(Ias^2); //Motor Torque

//FullConverter
Vaf=2*sqrt(2)*E*cosd(a)/%pi;
Iaf=Vaf/(Raw+(K*w)); //Armature Current
Taf=K*(Iaf^2); //Motor Torque

//Accurate Caclculation, Rounding Off not done.
printf('The Motor Current And Motor Torque for:\n')
printf('i) Semi Converter : %g A and %g Nm\n',Ias,Tas)
printf('ii) Full Converter : %g A and %g Nm\n',Iaf,Taf)
