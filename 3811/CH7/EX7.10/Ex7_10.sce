//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 7
//example 7.10
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
V=480;                       //terminal voltage in volt
p=6;                        //number of poles
f=60;                      //frequency in hertz
Xl=3;                     //inductive reactance in ohm
Rs=.2;                   //stator resistance in ohm
X2=2;                   //rotor reactance in ohm
R2=0.1;                //resistance reffered to the stator in ohm
Xm=120;               //magnetizing reactance in the linear region in ohm
Xm1=42;              //magnetizing reactance in the saturation region in ohm
Td=100;            //constant load torque in Nm
n=900;            //speed of the motor in rpm
Is=21.6;
rps=n/60;
omega=(2*%pi*rps);
f=(((3*Is^(2)*R2)/((2*%pi*Td)/f))+n)*(p/Xm);
mprintf("\nThe frequency of the CSI to drive the machine at 900 rpm is %f Hz",f)
