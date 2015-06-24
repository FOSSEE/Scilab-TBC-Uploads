clc
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
VBD=20
disp("VBD = "+string(VBD)+" V") //initializing value of  break down voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
E=Eo*Er
disp("total permittivity,E=Eo*Er)="+string(E)+" F/cm")//calculation
Emax=5*10^5
disp("Emax = "+string(Emax)+" V/cm") //initializing value of maximum critical electric field.
ND=(Eo*Er*(Emax^2))/(2*e*VBD)
disp("ND=(Eo*Er*(Emax^2))/(2*e*VBD)="+string(ND)+" cm^-3")//calculation


//the formula given in the solution for VBD is somewhat written wrong.The correct formula is (VBD=(E*Emax^2/2*e*ND)).
