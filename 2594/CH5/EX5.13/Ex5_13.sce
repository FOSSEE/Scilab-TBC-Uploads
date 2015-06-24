clc
Emax=2*10^5
disp("Emax = "+string(Emax)+"V/cm") //initializing value of maximum electric field.
Nd=10^18
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of donor concentration .
Vbi=0.54
disp("Vbi = "+string(Vbi)+"V") //initializing value of built in voltage.
Vr=20
disp("Vr = "+string(Vr)+"V") //initializing value of applied reverse voltage.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Na=(Emax^2*E*Nd)/((2*e*(Vbi+Vr)*Nd)-(Emax^2*E))
disp("Na=(Emax^2*E*Nd)/((2*e*(Vbi+Vr)*Nd)-(Emax^2*E)))="+string(Na)+"cm^-3")//calculation.
