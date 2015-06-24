clc
a=2*10^-4
disp("a = "+string(a)+" cm") //initializing value of height of channel at pinch off.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
un=1350
disp("un = "+string(un)+"cm^2/V-s") //initializing value of mobility of n-type silicon Mosfet.
W=8*10^-4
disp("W = "+string(W)+" cm") //initializing value of width of p-substrate.
L=10*10^-4
disp("L = "+string(L)+" cm") //initializing value of length of p-substrate.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Vp=4
disp("Vp = "+string(Vp)+" V") //initializing value of thickness of p-substrate.
Vgs=0
disp("Vgs = "+string(Vgs)+" V") //initializing value of gate to source voltage.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation
Nd=((Vp*2*E)/(e*a^2))
disp("Donor ion concentration,Nd=((Vp*2*E)/(e*a^2)))="+string(Nd)+" /cm^3")//calculation
rds=(L/(W*a*e*un*Nd))
disp("On Drain resistance,rds=(L/(W*a*e*un*Nd)))="+string(rds)+" ohm")//calculation
