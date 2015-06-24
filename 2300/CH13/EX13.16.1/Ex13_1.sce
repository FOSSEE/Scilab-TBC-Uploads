//scilab 5.4.1
//Windows 7 operating system
//chapter 13 Field-Effect Transistors
clc
clear
ND=2*10^21//ND=donor concentration in m^-3 of an n-channel silicon JFET
e=1.6*10^-19//e=charge of an electron
E=12*8.854*10^-12//E=permittivity of the material where 12=dielectric constant of silicon(given)
a=(4*10^-6)/2//2*a=channel width in metres and 2*a=4*10^-6
Vp=(e*ND*(a^2))/(2*E)
format("v",5)
disp("V",Vp,"The pinch-off voltage is =")
VGS=-2//VGS=gate source voltage
//Vp=VDsat-VGS where VDsat=saturation voltage
VDsat=Vp+VGS
format("v",5)
disp("V",VDsat,"The saturation voltage is =")
