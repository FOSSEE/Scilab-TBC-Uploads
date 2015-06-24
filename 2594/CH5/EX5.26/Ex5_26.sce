clc
Na=5*10^15
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor concentration.
Nd=10^18
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Vr=10
disp("Vr = "+string(Vr)+"V") //initializing value reverse voltage.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Emax=10^6
disp("Emax = "+string(Emax)+"V/cm") //initializing value of maximum electric field.
W=(2*Vr/(Emax))
disp("W = "+string(W)+"cm") //calculation.
Nd=(Emax*E)/(W*e)
disp("Nd=(Emax*e)/(W*e))="+string(Nd)+"cm^-3")//calculation.
