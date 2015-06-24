//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
V=500//V=bandwidth of a He-Ne laser in Hz
t=1/V//t=coherence time
disp("ms",(t*(10^3)),"The coherence time is =")
c=3*10^8//c=velocity of light in m/s
Lc=c/V//Lc=longitudinal coherence length
disp("km",(Lc/1000),"The longitudinal coherence length is=")
