
clear; clc; close;

E = 20;    //volts
Vk1 = 0.7;    //volts
Vk2 = 0.7;    //volts
R1 = 3.3*10^(3);    //ohms
R2 = 5.6*10^(3);    //ohms

I1 = Vk1/R1;
V2 = E-Vk1-Vk2;
I2 = V2/R2;

Id2 = I2 - I1;

disp(I1,'I1 current is : ');
disp(I2,'I2 current is : ');
disp(Id2,'Id2 current is :');
