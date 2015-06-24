//scilab 5.4.1
//Windows 7 operating system
//chapter 12 Modulation and Demodulation
clc
clear
Pc=10//Pc=unmodulated carrier power in kilowatts(kW)
Pt=12.5//Pt=total power in kilowatts(kW)
//Pt=Pc*(1+((ma^2)/2)) 
ma=sqrt(2*((Pt/Pc)-1))//ma=depth of modulation of the first signal
disp(ma,"The depth of modulation is ma=")
mb=0.6//mb=depth of modulation of the second signal
PT=Pc*(1+((ma^2)/2)+((mb^2)/2))//PT=the total radiated power
disp("kW",PT,"The total radiated power is PT=")
