//Caption:Calculate the breakdown power of air filled coaxial cable at 9.375 GHz.
//Exa:4.3
clc;
clear;
close;
//Given: 
a=2.42;//in cm
x=2.3;//x=(b/a)
P_bd=3600*a^2*log(x);//in kilowatts
disp(P_bd,'Breakdown Power (in kW) =');

//answer in book is wrongly written as 398 kW.