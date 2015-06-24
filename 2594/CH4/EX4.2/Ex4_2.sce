clc
Nd=2*10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor concentration.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric constant.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Eo=8.854*10^-14
disp("eo = "+string(Eo)) //initializing value of permittivity of free space.
un=1350
disp("un = "+string(un)+"cm2/Vs") //initializing value of mobility.
sigma=e*un*Nd
disp("conducitivity,sigma=e*un*Nd)="+string(sigma)+"S/cm")//calculation
td=((Er*Eo)/sigma)
disp("Dielectric releaxation time,td=((Er*Eo)/sigma))="+string(td)+"s")//calculation
