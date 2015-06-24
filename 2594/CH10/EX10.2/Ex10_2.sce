clc
Nd=10^14
disp("Nd = "+string(Nd)+" /cm^-3") //initializing value of donor ion  concentration.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
W=100*10^-4
disp("W = "+string(W)+" cm") //initializing value of width of SCR.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation
Vpt=(e*Nd*W^2)/(2*E)
disp("Punch trough voltage,Vpt=(e*Nd*W^2)/(2*E))="+string(Vpt)+" V")//calculation
