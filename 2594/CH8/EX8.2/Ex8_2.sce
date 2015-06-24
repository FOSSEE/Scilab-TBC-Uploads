clc
Na=10^17
disp("Na = "+string(Na)+" /cm^3") //initializing value of acceptor ion  concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+"V") //initializing value of thermal voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
ni=1.5*10^10
disp("ni = "+string(ni)+"/cm^3") //initializing value of intrinsic carrier concentration. 
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant 
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
Vs=Vt*log(Na/ni)
disp("Vs=Vt*log(Na/ni))="+string(Vs)+" V")//calculation
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation
Wd=sqrt(4*E*Vs/(e*Na))
disp("maximum depletion width,Wd(max)=Sqrt(4*E*Vs/(e*Na)))="+string(Wd)+" cm")//calculation
