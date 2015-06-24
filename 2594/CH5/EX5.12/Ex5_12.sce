clc
Na=10^16
disp("Na = "+string(Na)+"/cm^3") //initializing value of medium p doping concentration.
Nd=10^18
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping .
Vbi=0.64
disp("Vbi = "+string(Vbi)+"V") //initializing value of built in voltage.
Vr=20
disp("Vr = "+string(Vr)+"V") //initializing value of applied reverse voltage.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Emax=-(sqrt(((2*e*(Vbi+Vr))/(E))*((Nd*Na)/(Na+Nd))))
disp("Emax=-(sqrt(((2*e*(Vbi+Vr))/(E))*((Nd*Na)/(Na+Nd)))))="+string(Emax)+"V/cm")//calculation.
