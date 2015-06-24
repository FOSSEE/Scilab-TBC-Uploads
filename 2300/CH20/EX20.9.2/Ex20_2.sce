//scilab 5.4.1
//Windows 7 operating system
//chapter 20 Cathode Ray Oscilloscope
clc
clear
e=1.6*10^-19//e=charge of an electron
Va=1000//Va=potential difference in volts
m=9.11*10^-31//m=mass of an electron
v=sqrt((2*e*Va)/m)//v=axial velocity of an electron
l=1.5*10^-2//l=axial length of deflecting plates in metre
t=l/v//t=transit time of the beam through the deflecting plates
//T=time period of the sinusoidal deflecting voltage 
//tmax=maximum transit time
//(0.1/360)*T=tmax,since 1 cycle corresponds to 360 degrees
T=(t*360)/0.1
f=1/T//f=highest frequency of the deflecting voltage
format("v",5)
disp("kHz",f/1000,"The highest frequency of the deflecting voltage is =")
