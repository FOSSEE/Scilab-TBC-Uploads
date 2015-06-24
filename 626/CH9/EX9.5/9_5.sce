clear;
clc;
close;
disp("Example 9.5")
Tt=1700 //total gas temp at exit
gm=1.33 //gamma
Cp=1157 //in J/kg.K
M2=1 //local gas Mach no.
Pr=0.71 // Prandtl no.
W2=455 // gas speed relative to rotor
Tg=Tt/(1+(gm-1)*(M2^2)/2)
disp(Tg,"(a)The gas static temperature Tg in K:")
a2=((gm-1)*Cp*Tg)^(1/2)
C2=a2
r=Pr^(1/3)
Taw=Tg+Pr^(1/3)*C2^2/(Cp)
disp(Taw,"(b)The adiabatic wall temperatue Taw on the nozzle for a turbulent boundary layer in K:")
Ttr=Tg+(W2^2)/(2*Cp)
Tawl=Tg+Pr^(1/2)*C2^2/(Cp)
disp(Tawl,"The adiabatic wall temperature on the nozzle for a laminar boundary layer in K: ")
disp(Ttr,"(d)The rotor temperature of the gas on the rotor in K:")