//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 6.12
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

At1=2000;   //amper eturns per pole
Va=250;      //armature voltage in v
Ia=100;       //armature current in A
Ra=0.12;     //armature resistance in ohm
N=1200;    //speed in rpm

E=Va-Ia*Ra;
E1=212;    //from graph 6.41
N1=N*E/E1;
n1=N1*2*3.14/60;
T=E*Ia/n1;

printf('The motor speed is %f rpm[%f rad/s]\n',N1,n1);
printf('the torque is %f Nm',T)
