//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
//y0=vacuum wavelength for the frequency v
//c=(v*y0)
//The deviation in the wavelength is Y0=(c*V)/(v^2)
//Y0=((y0^2)*V)/c
//V being spread in frequency over the linewidth.
//V=(1/tc)
c=3*(10^8)//c=velocity of light in m/s
tc=10^(-8)//tc=coherence time in seconds
y0=650*(10^(-9))//y0=vacuum wavelength in m
Y0=(y0^2)/(c*tc)
format("e",9)
disp("nm",Y0/(10^-9),"Line width is =")//Y0 is converted in terms of nm
Lc=c*tc//Lc=coherence length
format("v",5)
disp("m",Lc,"The coherence length Lc is=")
