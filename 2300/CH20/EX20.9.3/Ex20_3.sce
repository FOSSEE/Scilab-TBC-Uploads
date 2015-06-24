//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
V=1000//V=potential difference in volts
//B=150 gauss (given)
B=1.5*10^-2//B=magnetic field in tesla
l=1*10^-2//l=axial length of deflecting plates in metre
L1=20*10^-2//L1=(L+(l/2))=distance of the fluorescent screen from the centre of the deflection system in metre
e=1.6*10^-19//e=charge of an electron
m=9.11*10^-31//m=mass of an electron
d=B*sqrt(e/(2*V*m))*l*L1//d=deflection of the spot 
format("v",5)
disp("cm",d*100,"The deflection of the spot is=")
Sm=d/B//Sm=magnetic deflection sensitivity
format("v",5)
disp("mm/gauss",Sm/10,"The magnetic deflection sensitivity is=")
