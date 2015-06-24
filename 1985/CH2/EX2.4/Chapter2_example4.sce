clc
clear
//Input data
d=1.5//Distortion in the block in cm
t=30//Thickness of the block in cm
A=12//Surface area of the block in m^2
s=(2.5*10^10)//Shear modulus of aluminium in N/m^2

//Calculations
F=((s*A*10^-4*d*10^-2)/(t*10^-2))/10^6//Shearing force in N

//Output
printf('Shearing force is %3.1f *10^6 N',F)
