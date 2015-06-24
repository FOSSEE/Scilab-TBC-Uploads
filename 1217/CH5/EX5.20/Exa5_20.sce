// Exa 5.20
clc;
clear;
close;
// given data 
R1=10;//in Kohm
R2=47;//in Kohm
R3=5.6;//in Kohm
RT=4.7;//in Kohm
CT=0.05;//in uF
V1=-10;//in Volt
V2=2;//in Volt
disp("By the concept of virtual ground and using superposition theorem the op-amp output voltage can be calculated.");
Vop=-(R1*V1/R2+R1*V2/R3);// in volt
VEE=0;//in Volt
I=(VEE+3-Vop)/RT;// in mA
fo=0.32*I*10^-3/(CT*10^-6);//in Hz
disp(Vop,"Op-amp voltage in volt is : ");
disp(fo/1000,"Frequency in KHz is :");