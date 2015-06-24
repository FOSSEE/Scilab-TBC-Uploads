clc
Nc=2.8*10^19
disp("Nc = "+string(Nc)+" cm^-3") //initializing value of effective density of state in the conduction band.
k=-4*10^15
disp("k = "+string(k)+" cm^4F^-2V^-1") //initializing value of slope of the (1/C^2) versus V curve.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of dielectric constant of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
VBI=0.3
disp("VBI = "+string(VBI)+" V") //initializing value of built in  voltage.
E=Eo*Er
disp("total permittivity,E=Eo*Er ="+string(E)+" F/cm")//calculation
Nd=((-2)/(e*E)*(1/k))
disp("Nd=((-2)/(e*E)*(1/k)))="+string(Nd)+" cm^-3")//calculation
Vn=(Vt*(log(Nc/Nd)))
disp("Vn=(Vt*(log(Nc/Nd)))="+string(Vn)+" V")//calculation
VBn=(VBI+Vn)
disp("VBn=(VBI+Vn)="+string(VBn)+" V")//calculation


// taking ,... d(1/C^2)/dV as k,... for simlification
