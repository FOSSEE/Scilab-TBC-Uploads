//scilab 5.4.1
//Windows 7 operating system
//chapter 15 Active Filters
clc
clear
fo=400//fo=centre frequency in Hz
Q=10//Q=wo/w=Quality factor
C1=0.1*10^-6
C2=0.1*10^-6//C1=C2=Assumed Capacitances in Farad
Ao=2//Ao=gain at the centre frequency
//R1*C1=Q/(wo*Ao) for active band pass Butterworth filter
wo=2*%pi*fo
R1=Q/(Ao*wo*C1)
format("v",6)
R3=Q/(wo*((C1*C2)/(C1+C2)))
Rp=1/((wo^2)*R3*C1*C2)
R2=(R1*Rp)/(R1-Rp)
//Assuming arbitrarily (R6/R5)=10=a
a=10
R6=10*1000//R6=Assumed resistance in ohms
R5=R6/a
R4=R5/Ao
disp("The designed values of resistance and capacitance for a notch filter are:")
disp("kilo ohm",(R1/1000),"R1=")
disp("ohm",(R2),"R2=")
disp("kilo ohm",(R3/1000),"R3=")
disp("ohm",R4,"R4=")
disp("kilo ohm",(R5/1000),"R5=")
disp("kilo ohm",(R6/1000),"R6=")
disp("micro Farad",C1/10^-6,"C1=")
disp("micro Farad",C2/10^-6,"C2=")

