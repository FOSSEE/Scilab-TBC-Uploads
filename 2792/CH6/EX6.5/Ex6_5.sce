clc
apsilen = 11.9*8.85*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
Nd = 10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of diode doping
Nc = 2.8*10^19
disp("Nc = "+string(Nd)+"cm^-3") //initializing value of channel doping
kBT = 0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and 300K temperature
I=10*10^-3
disp("I = "+string(I)+"A") //initializing value of forward bias current
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
A= 10^-3
disp("A= "+string(A)+"cm^2") //initializing value of area 
disp("        for W-n type Si schottky barrier          ")
T = 300
disp("T= "+string(T)+"K")//initializing value of temperature
phi_b = 0.67
disp("schottky barrier heights(in volts) =phi_b= "+string(phi_b)+"eV")//initializing value of schottky barrier heights(in volts)
R = 110
disp("R* = "+string(R)+"Acm^-2K^-1") //initializing value of effective richardson constant
Is = A*R*(T^2)*(exp(-(phi_b)/(kBT)))
disp("The reverse saturation current is ,Is = A*R*(T^2)*(exp(-(Qb/kbT))) = "+string(Is)+"A")//calculation
V = kBT*(log(I/Is))
disp("The applied bias for schottky diode corresponding to 10mA forward current is,V = kBT*(log(I/Is))= "+string(V)+"V")//calculation
E = kBT*log(Nc/Nd)
disp("The fermi level positionin the neutral semiconductor(Efs) with respect to the conduction band is,Ec-Efs= E = kBT*log(Nc/Nd)= "+string(E)+" eV")//calculation
Vbi= phi_b-(E)
disp("The built in voltage is ,Vbi= phi_b-((1/e)*E)= "+string(Vbi)+"V")//calculation
Cd = A*sqrt((e*Nd*apsilen)/(2*(Vbi-V)))
disp("The diode capacitance is ,Cd = A*sqrt((e*Nd*apsilen)/(2*(Vbi-V))) = "+string(Cd)+"F")//calculation
R = kBT/I
disp("The resistance is ,R = kBT/I = "+string(R)+"ohm")//calculation
RC = R*Cd
disp("The RC time constant is ,RC(schottky) = R*Cd = "+string(RC)+"s")//calculation
disp("        for Si p+ -n junction diode          ")
Tb = 10^-6
disp("Tb= "+string(Tb)+"s")//inializing value of electron lifetime
disp("In the p-n diode the junction capacitance and the small signal resistance will be same as those in the schottky diode")
Cdiff = ((I*Tb)/(kBT))
disp("The diffusion capacitance is ,Cdiff = (I*Tb)/(kBT) = "+string(Cdiff)+"F")//calculation
RC1 = R*Cdiff
disp("The RC time constant is ,RC(p-n) = R*Cdiff = "+string(RC1)+"s")//calculation
disp("From the above RC time constant value it can be concluded that p-n diode is almost 1000 times slower")
// Note: due to approximation, the value of diode capicitance and diffusion capacitance are differ from that of the textbook


