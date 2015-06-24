clc
Na=4*10^17
disp("Na = "+string(Na)+"/cm^3") //initializing value of donor concentration.
Nd=4*10^15
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
Emax=300*10^3
disp("Emax = "+string(Emax)+"/cm^3") //initializing value of maximum electric field.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Vbi=((K*T/e)*log((Na*Nd)/(no)^2))
disp("Built in potential potential,Vbi=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vbi)+" V")//calculation.
xn=(E*Emax/(Nd*e))
disp("xn=(E*Emax)/(e*Nd))="+string(xn)+" cm")//calculation.
W=(xn*(Nd+Na)/Na)
disp("W=(xn(Nd+Na)/Na))="+string(W)+" cm")//calculation.
Vr=((W^2*e/(2*E))*((Na*Nd)/(Na+Nd)))-(Vbi)
disp("Vr=(W^2*e/(2*E))*((Na*Nd)/(Na+Nd))-(Vbi))="+string(Vr)+" V")//calculation.
