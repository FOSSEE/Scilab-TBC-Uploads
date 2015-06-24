//scilab 5.4.1
//Windows 7 operating system
//chapter 19 VLSI Technology and Circuits
clc
clear
L=3*10^-6//L=length of an NMOS pass transistor in metres
VDS=0.5//VDS=drain-source voltage
u=1400*10^-4//u=electron mobility in m^2/V s
t=L^2/(VDS*u)//t=channel transit time
format("v",5)
disp("nanoseconds",t/10^-9,"The transit time is=")
