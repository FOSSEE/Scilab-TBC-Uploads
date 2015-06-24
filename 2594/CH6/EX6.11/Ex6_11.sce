clc
Nd=1*10^18
disp("Nd = "+string(Nd)+" cm^-3") //initializing value of donor concentration.
Na=-1*10^18
disp("Na = "+string(Na)+" cm^3") //initializing value of acceptor concentration.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of dielectric constant of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
Vbd=15
disp("Vbd = "+string(Vbd)+" eV") //initializing value of break down voltage.
W=2*10^-4
disp("W = "+string(W)+" cm") //initializing value of the distance over which doping profile varies.
E=Eo*Er
disp("total permittivity,E=Eo*Er)="+string(E)+" F/cm")//calculation
a=((Nd-Na)/(W))
disp("slope of doping profile curve,a=((Nd-Na)/(W))="+string(a)+" cm^-4")//calculation
Emax=(((Vbd)^2)*9*e*a/(32*E))^(1/3)
disp("Emax=(((Vbd)^2)*9*e*a/(32*E))^(1/3)="+string(Emax)+" V/cm")//calculation
