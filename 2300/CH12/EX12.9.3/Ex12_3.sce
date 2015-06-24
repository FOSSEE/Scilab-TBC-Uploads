//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
R=100//R=load resistance in ohms
Vc=100//Vc=peak voltage of the carrier in volts
ma=0.4//ma=modulation factor
Pc=(Vc^2)/(2*R)//Pc=unmodulated carrier power developed by an AM wave
disp("W",Pc,"The unmodulated carrier power is Pc= ")
Pt=Pc*(1+((ma^2)/2))//Pt=total power developed
disp("W",Pt,"The total power developed by the AM wave is Pt=")

