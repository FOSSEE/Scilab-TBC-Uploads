//calculating speed ratio of generator and motor working conditios
//Chapter 2
//Example 2.14
//page 101
clear;
clc;
disp("Example 2.14")
V=250;                //voltage supply in volts
Ra=0.12;              //armature resistance in ohms
Rf=100;                //field resistance in ohms
Il=80;                //load current in amperes
If=V/Rf                
printf("Field current,If=%f",If)
disp("When machine is generating")
Ia=Il+If
Eg=(V+(Ia*Ra))
printf("\nIa=%fA",Ia)
printf("\nEg=%fV",Eg)
disp("When machine is motoring")
Ia=Il-If
Em=(V-(Ia*Ra))
printf("\nIa=%fA",Ia)
printf("\nEg=%fV",Em)
ratio=Eg/Em
printf("\nRatio of speeds=%f",ratio)

