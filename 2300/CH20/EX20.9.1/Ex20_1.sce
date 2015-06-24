//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
e=1.6*10^-19//e=charge of an electron
Va=1000//Va=potential difference in volts
m=9.11*10^-31//m=mass of an electron
v=sqrt((2*e*Va)/m)//v=axial velocity of an electron
l=2*10^-2//l=axial length of deflecting plates in metre
t=l/v//t=transit time of the beam through the deflecting plates
format("v",9)
disp("s",t,"The transit time is =")
Vd=20//Vd=potential difference applied between the deflecting plates in volts
s=5*10^-3//s=separation between the plates in metre
ta=(e*Vd)/(s*m)//ta=the traverse acceleration imparted to the electrons by the deflecting voltage
format("v",10)
disp("m/s^2",ta,"Traverse acceleration is =")
L=25*10^-2//L=distance of the CRT screen from the centre of the deflecting plates in metre
d=(l*L*Vd)/(2*s*Va)//d=deflection of the spot on the CRT screen
format("v",13)
disp("cm",d*100,"Spot deflection is =")//d is converted in terms of cm
S=d/Vd//S=deflection sensitivity
format("v",10)
disp("mm/V",S/10^-3,"Deflection sensitivity is =")//S is converted in terms of mm/V
