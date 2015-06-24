//calculating speed of machine
//Chapter 2
//Example 2.13
//page 101
clear;
clc;
disp("Example 2.13")
disp("At generator condition")
P=50000;            //power delivered in watts
V=250;              //voltage in volts
Ra=0.02;            //armature resistance in ohms
Rf=50;              //field resistance in ohms
If=V/Rf             //field current in amperes
Ng=400;             //speed in generating condition in rpm
printf("field current,If=%dA",If)
Il=P/V               //load current in amperes
printf("\nLoad current,If=%dA",Il)
Ia=If+Il             //armature current in amperes
printf("\nAramture current,If=%dA\n",Ia)
Eg=(V+(Ia*Ra))
disp("At motor condition")
Ia=(Il-If)
printf("Aramture current,If=%dA",Ia)
Em=(V-(Ia*Ra))
printf("\nEm=%fV",Em)
Nm=(Ng*Em)/Eg
printf("\nSpeed of the motor=%drpm",Nm)
