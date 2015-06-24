//calculating the speed of the motor
//Chapter 2
//Example 2.20
//page 125
clear;
clc; 
disp("Example 2.20")
Il=5;            //current in amperes al no-load
V=250;            //voltage in volts
Rf=250;            //field resistance in ohms
If1=V/Rf;            //field current in amperes
Ia1=Il-If1;            //armature current
Ra=0.2;                    //armature resistance in ohms
disp("at a load current of 50A")
Il2=50;                //load current in amperes
//armature reaction weakens by 3percent
If2=0.97;                    //current in amperes
Ia2=Il2-If2;
N1=1000; 
E1=(V-(Ia1*Ra));
E2=(V-(Ia2*Ra));
N2=(N1*E2)/(0.97*E1);
printf("N2=%frpm",N2)
