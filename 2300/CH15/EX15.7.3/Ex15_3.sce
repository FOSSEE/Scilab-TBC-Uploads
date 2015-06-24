//scilab 5.4.1
//Windows 7 operating system
//chapter 15 Active Filters
clc
clear
fo=1000//fo=centre frequency in Hz
f=100//f=bandwidth in Hz
//Q=wo/w=Quality factor
Q=(2*%pi*fo)/(2*%pi*f)
C1=0.02*10^-6
C2=0.02*10^-6//C1=C2=Assumed Capacitances in Farad
Ao=2//Ao=gain at the centre frequency
//R1*C1=Q/(wo*Ao) for active band pass Butterworth filter
wo=2*%pi*fo
R1=Q/(Ao*wo*C1)
R3=Q/(wo*((C1*C2)/(C1+C2)))
Rp=1/((wo^2)*R3*C1*C2)
R2=(R1*Rp)/(R1-Rp)
disp("The designed values of resistance and capacitance for a second order band-pass Butterworth filter are:")
disp("kilo ohm",ceil(R1/1000),"R1=")//floor() and ceil() functions are used in order to get truncated floating values as per the requirement
disp("ohm",floor(R2),"R2=")
disp("kilo ohm",ceil(R3/1000),"R3=")
disp("micro Farad",C1/10^-6,"C1=")
disp("micro Farad",C2/10^-6,"C2=")
