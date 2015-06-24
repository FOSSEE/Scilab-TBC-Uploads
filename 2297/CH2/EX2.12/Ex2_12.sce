// Example 2.12 :Circuit constants
clc;
close;
format('v',6)
clear;
// given :
//v=194*cos(800*t+150)V Voltage equation
//I=11.6*cos(800*t+140)A Current equation
vm=194/sqrt(2);//voltage in volts
va=150;//angle in degree
im=11.6/sqrt(2);//current in amperes
ia=140;//angle in degree
zm=vm/im;//resistance in ohms
za=va-ia;//resistance in ohms
z1=zm*cosd(za);//reactance in ohms
z2=zm*sind(za);//reactance in ohms
z=z1+%i*z2;//resistance in ohms
disp("part (a)")
disp(z,"Impedance is ,(Ohm)=")
disp("part (b)")
//v=6*sin(1000*t+45)V  Voltage equation
//I=12*cos(1000t-90)A current equation
vm1=60/sqrt(2);//voltage in volts
va1=45;//angle in degree
im1=12/sqrt(2);//current in amperes
ia1=0;//angle in degree
zm1=vm1/im1;//resistance in ohms
za1=va1-ia1;//resistance in ohms
z11=zm1*cosd(za1);//reactance in ohms
z21=zm1*sind(za1);//reactance in ohms
z22=z11+%i*z21;//impedance in ohms
disp(z22,"Impedance is ,(Ohm)=")
