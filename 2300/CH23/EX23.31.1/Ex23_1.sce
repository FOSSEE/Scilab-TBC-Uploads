//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
y=630*10^(-9)//y=emitted wavelength in meters
c=3*10^8//c=velocity of light in free space in m/s
v=c/y//v=frequency of the emitted radiation
format("v",9)
disp("The frequency of the emitted radiation is")
disp("Hz",v,"v=")
h=6.62*10^(-34)//h=Planck's constant
P=1*10^(-3)//P=output power of gas laser(given)
n=P/(h*v)
format("v",9)
disp("s^-1",n,"The number of photons emitted per second is=")
