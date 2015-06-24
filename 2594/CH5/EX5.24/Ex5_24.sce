clc
Na=4*10^12
disp("Na = "+string(Na)+" /cm^3") //initializing value of medium p doping concentration.
Nd=4*10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of light n doping.
no=1.5*10^10
disp("no = "+string(no)+" /cm^3") //initializing value of intrinsic carrier concentration.
K=1.38*10^-23
disp("K = "+string(K)+" J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Vbi=((K*T/e)*log((Na*Nd)/(no)^2))
disp("Built in potential potential,Vbi=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vbi)+" eV")//calculation.
W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd)))
disp("W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd))))="+string(W)+" cm")//calculation.
xn=((W*Na)/(Nd+Na))
disp("xn=((W*Na)/(Nd+Na)))="+string(xn)+" cm")//calculation.
xp=((W*Nd)/(Nd+Na))
disp("xp=((W*Nd)/(Nd+Na)))="+string(xp)+" cm")//calculation.
Emax=(e*Nd*xn)/E
disp("Emax=(e*Nd*xn)/E)="+string(Emax)+" V/cm")//calculation.
//the value of W(depletion width) ,after calculation is provided wrong in the book,due to this xn,xp ,Emax also differ.(also,the value of Nd+Na substitute in the 
//formula for for xn,xp is wrong )

