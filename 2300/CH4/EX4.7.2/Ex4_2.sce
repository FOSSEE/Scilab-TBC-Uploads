
//scilab 5.4.1
//windows 7 operating system
//chapter 4:Metal-Semiconductor Contacts
clc
clear
//given
// as per given data barrier height =Vbi=intercept on Vr axis=0.4 V
Es=11.7*8.854*(10^-12)//Es=permittivity of semiconductor;11.7=dielectric constant of silicon
e=1.6*10^(-19)//e=charge of an electron
m=4.4*10^(15)//m=slope of (1/C^2) vs Vr plot of a Schottky contact in(cm^4)(F^-2)(V^-1)
//m=2/(e*Es*Nd)
Nd=(2*10^8)/(e*Es*m)//Nd=donor concentration in silicon in m^-3
disp("m^-3",Nd,"Nd=")
