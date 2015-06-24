//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
h=6.62*10^-34//h=Planck's constant
c=3*10^8//c=velocity of light in vacuum in m/s
y=632.8*10^-9//y=emitted wavelength in m
E=(h*c)/y//E=emitted photon energy in Joules
e=15.2*10^-19//e=energy of 2p level in Joules
P=E+e//P=Pumping energy required for transition from 3s to 2p level in a He-Ne laser
disp("eV",P/(1.6*10^-19),"The desired pumping energy is =")
format("v",10)
