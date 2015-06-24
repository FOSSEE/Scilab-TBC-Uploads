clc
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration of electrons.
Emax=10^6
disp("Emax = "+string(Emax)+" V/cm") //initializing value of maximum critical electric field..
Nd=1*10^18
disp("Nd="+string(Nd)+" cm^-3")//initializing the value of donor concentration.
Na=1*10^18
disp("Na="+string(Na)+" cm^-3")//initializing the value of acceptor concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
VBI=(Vt*(log(Na*Nd/no^2)))
disp("VBI=(Vt*(log(Na*Nd/no^2))) = "+string(VBI)+" V") // calculation.
E=Eo*Er
disp("total permittivity,E=Eo*Er)="+string(E)+" F/cm")//calculation
V=(E*Emax^2)/(e*Nd)
disp("breakdown voltage for symetrical abrupt junction,VBD+VBI=(E*Emax^2)/(e*Nd))="+string(V)+" V")//calculation
VBD=V-VBI
disp("VBD=V-VBI)="+string(VBD)+" V")//calculation

