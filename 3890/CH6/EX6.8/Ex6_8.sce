//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.8
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

V=230;        //supply voltage in v
Ra=.05;         //armature resistance in ohms
Rf1=75;         //field resistance in no load in  ohms
Rf2=100;        //field resistance in on load condition in ohms
I1=7;N1=1120;   //no load current and speed 
I2=46;          //on load current in A
Ra2=0.15        //armature resistance at on load condition in ohms

If=V/Rf1;
Ia1=I1-If;
K=(V-Ia1*Ra)/(N1*If);
Ia2=I2-If;
N=(V-Ia2*Ra)/(If*K);

If1=V/Rf1;
Ia0=I2-If1;
n=(V-Ia2*Ra2)/(If1*K);
pl=(Ia0^2)*0.1;

printf('speed of the motor is %d rpm\n',n)
printf('power dissipated in 0.1 ohm resistor is %f W',pl)
