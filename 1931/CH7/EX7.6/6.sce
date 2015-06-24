clc
clear
//INPUT DATA
t=1*10^-3//thickness of metal in m
V=1//potential difference applied in volts in V
T=300//temperature in k
m=0.04//mobility in m^2 V^-1 s^-1
k=1.38*10^-23//boltzmann constant in m^2 Kg s^-2 k^-1
m1=9.11*10^-31//mass of a electron in kg

//CALCULATION
v=(sqrt((3*k*T)/m1)/10^3) //thermal velocity in ms^-1 *10^3
E=V/t//unit potenyial voltage gradient in V m^-1
vd=E*m//drift velocity of electrons in m s^-1

//OUTPUT
printf('The thermal velocity is %3.2f *10^3 m s^-1 \n Drift velocity of electrons is %i m s^-1 \n Thus the terminal velocity is high compared to the drift velocity',v,vd)
