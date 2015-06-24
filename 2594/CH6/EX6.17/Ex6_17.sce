clc
Er=13.1
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Emax=30*10^3
disp("Emax = "+string(Emax)+" V/cm") //initializing value of maximum critical electric field..
E=Eo*Er
disp("total permittivity,E=Eo*Er)="+string(E)+" F/cm")//calculation
V=sqrt(e*Emax/(4*%pi*E))
disp("lowering of the barrier height,V=sqrt(e*Emax/(4*%pi*E))="+string(V)+" V")//calculation
Xmax=sqrt(e/(16*%pi*E*Emax))
disp("position of the maximum barrier height,Xmax=sqrt(e/(16*%pi*E*Emax))="+string(Xmax)+" cm")//calculation
