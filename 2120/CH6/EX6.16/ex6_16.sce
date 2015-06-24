//Exa 6.16
clc;
clear;
close;
// Given data
Wnet_compresser= 3;// in kW
Wnet_compresser=Wnet_compresser*3600;// in kJ/h
Qabsorbed= 50;// in MJ/h
Qabsorbed=Qabsorbed*10^3;// in kJ/h
T1 = 46+273;// in K
T2 = 1+273;// in K
Qrejected= Wnet_compresser+Qabsorbed;// in kJ/h
disp(Qrejected*10^-3,"The heat rejected in MJ/h is : ")
I= -(-Qrejected/T1+Qabsorbed/T2);// in kJ/h
disp(I,"Irreversibility in kJ/h is : ")
