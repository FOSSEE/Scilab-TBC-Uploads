//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi 
//chapter 5
//example 5.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
kpie=3;                    //flux in voltsec
Vt=600;                   //voltage in volts
Ra=2;                    //armature resistance in ohms
Ia=5;                   //armature current at fullload in ampere
Td=kpie*Ia;            //rated torque in Nm
disp(Td,'The rated torque in Nm is')
Tst=(Vt*kpie)/Ra;    //starting torque 
disp(Tst,'The starting torque in Nm is')
Ist=Vt/Ra;          //starting current
disp(Ist,'The starting current in ampere is') 
