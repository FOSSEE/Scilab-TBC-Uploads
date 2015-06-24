// Example 6.8
format('v',5)
clc;
clear;
close;
// given data
bita= 200;
R1= 47*10^3;// in Ω
R2= 15*10^3;// in Ω
r_E=  1*10^3;// in Ω
r_desh_e= 50;// in Ω
Zin_base= bita*(r_E+r_desh_e);// in Ω
// The input impedance of the amplifier 
Zin= R1*R2*Zin_base/(R1*R2+R1*Zin_base+R2*Zin_base);// in Ω
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedance of the amplifier in kΩ is : ")

