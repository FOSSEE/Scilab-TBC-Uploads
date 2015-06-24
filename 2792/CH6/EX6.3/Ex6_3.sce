clc
Nd = 10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of diode doping
Nc = 2.8*10^19
disp("Nc = "+string(Nd)+"cm^-3") //initializing value of channel doping
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
Vf=0.3
disp("Vf = "+string(Vf)+"V") //initializing value of forward bias
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
A= 10^-3
disp("A= "+string(A)+"cm^2") //initializing value of area 
disp("        for W-n type Si schottky barrier          ")
T = 300
disp("T= "+string(T)+"K")//initializing value of temperature
phi_b = 0.67
disp("schottky barrier heights(in volts) = phi_b= "+string(phi_b)+"eV")//initializing value of schottky barrier heights(in volts)
R = 110
disp("R* = "+string(R)+"Acm^-2K^-1") //initializing value of effective richardson constant
Is = A*R*(T^2)*(exp(-(phi_b)/(kBT)))
disp("The reverse saturation current is ,Is = A*R*(T^2)*(exp(-(phi_b/kbT))) = "+string(Is)+"A")//calculation
disp("using relation I= Is*(exp((e*V)/(nkBT))-1) and neglecting 1")
I = Is*(exp((Vf)/(kBT)))
disp("The diode current is ,I = Is*(exp((Vf)/(kBT))) = "+string(I)+"A")//calculation
disp("        for Si p+ -n junction diode          ")
Na = 10^19
disp("Na = "+string(Na)+"cm^-3") //initializing value of p+ doping
Db = 10.5
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
Tb = 10^-6
disp("Tb= "+string(Tb)+"s")//inializing value of electron lifetime
Lb = sqrt(Db*Tb)
disp("The electron carrier diffusion length is,Lb = sqrt(Db*Tb)= "+string(Lb)+"cm")//calculatio
pn = 2.2*10^4
disp("pn = "+string(pn)+"cm^-3") //initializing value of hole electron density 
Io = A*e*pn*(Db/Lb)
disp("The saturation current current is Io = A*e*pn*(Db/Lb) = "+string(Io)+"A")//calculation
I1 = Io*(exp((Vf)/(kBT)))
disp("The diode current for HBT is ,I = I0*(exp((Vf)/(kBT))) = "+string(I1)+"A")//calculation
disp("Since diode current for HBT is almost 6 orders of magnitude smaller than the value in the Schottky diode ")
disp("hence for the p-n diode to have the same current that the schottky dode has at .3 V , the voltage required is .71V")
