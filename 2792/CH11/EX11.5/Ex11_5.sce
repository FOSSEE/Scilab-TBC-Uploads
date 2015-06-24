clc
A= 1
disp("A= "+string(A)+"cm^2") //initializing value of diode area
Na=5*10^17
disp("Na = "+string(Na)+"cm^-3") //initializing value of p side doping
Nd=10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of n side doping
Dn = 20
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient
Dp = 10
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient
Tn = 3*10^-7
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
kbT = 0.026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of kbT at 300K
IL = 25*10^-3
disp("IL= "+string(IL)+"A")//initializing value of photocurrent
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of electron density of ionisation electron for silicon
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"cm")//calculation
Lp = sqrt(Dp*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp*Tp)= "+string(Lp)+"cm")//calculation
Io = A*e*(ni)^2*((Dn/(Ln*Na))+(Dp/(Lp*Nd)))
disp("The saturation current is ,Io = A*e*(ni)^2*((Dn/(Ln*Na))+(Dp/(Lp*Nd)))= "+string(Io)+"A")//calculation
Voc= (kbT)*log(1+(IL/Io))
disp("The open circuit voltage is ,Voc= (kbT)*log(1+(IL/Io))= "+string(Voc)+"V")//calculation
 

