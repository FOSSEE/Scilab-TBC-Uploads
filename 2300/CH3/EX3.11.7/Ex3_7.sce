
//scilab 5.4.1
//windows 8 operating system
//chapter 3:Properties of Semiconductors
clc
clear
//given
c=3*(10^8);//c=velocity of light in vacuum in m/s
h=6.6*(10^-34);//h=Planck's constant in J.s
Eg=1.98*1.6*(10^-19)//Eg=band gap in J
//calculating Y=required wavelength
Y=((c*h)/Eg)/(10^-9)
disp("nm",Y,"Y=")
