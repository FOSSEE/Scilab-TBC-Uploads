//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
u=8/(10^14)//u=(V/v)=the short term frequency stability of a He-Ne gas laser 
//v=c/y where c=velocity of light in vacuum  and y=wavelength
c=3*10^8//c=velocity of light in m/s
y=1153*10^(-9)//y=emitted wavelength in meters
V=(u*c)/y
t=1/V//t=coherence time
disp("ms",(t*(10^3)),"The coherence time is =")
format("v",9)
Lc=c/V//Lc=coherence length
disp("m",Lc,"The coherence length is=")
format("v",3)
