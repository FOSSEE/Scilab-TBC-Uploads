
//To deduce the speed current characteristic of the motor
//Page 380
clc;
clear;
Ia=[10,20,30,40,50,60,70]; //Current
T=[45,130,230,350,470,610,765]; //Torque
V=440; //operating voltage
r=0.5; //Armature Circuit Resistance

N=9.55*(V-(Ia*r))./(T./Ia); //Speed

printf('For the Given Current:\n')
disp(Ia);
printf('\nThe Speeds tabulated are:\n')
disp(N);

