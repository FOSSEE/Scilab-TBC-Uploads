
//To Determine the equivalent resistance of the charge and current
//Page 294
clc;
clear;

f=960; //Frequency
N1=20; //Primary Turns
N2=1; //Secondary is Single Turn
Pi=325*(10^3); //Power Input
Di=45; //Internal Diameter
l=50; //Depth of the charge

//Assumptions
p=200*(10^-6); //Resistivity
M=1; //For Molten Steel

t=(1/(2*%pi))*sqrt(p*(10^9)/(M*f)); //Depth of penentration of the current
A=t*l; //Effective Area
Dm=Di+t; //Mean Diameter
Dmcf=%pi*Dm; //Mean Length of current flow
Rc=p*Dmcf/A; //Resistance of the Cylinder

Is=sqrt(Pi/Rc); //Current flowing through secondary
Ip=Is*N2/N1; //Primary Current

printf('The Equivalent Resistance of the cylinder is %g * 10^-6 ohm\n',Rc/(10^-6))
printf('The Required Current in the primary is %g A\n',Ip)
