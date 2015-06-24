clc
Na=10^16
disp("Na = "+string(Na)+"/cm^3") //initializing value of medium p doping concentration.
Nd=10^18
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping .
Vbi=0.64
disp("Vbi = "+string(Vbi)+"V") //initializing value of built in voltage.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd)))
disp("W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd))))="+string(W)+" cm")//calculation.
xn=((W*Na)/(Nd+Na))
disp("xn=((W*Na)/(Nd+Na)))="+string(xn)+"cm")//calculation.
xp=((W*Nd)/(Nd+Na))
disp("xp=((W*Nd)/(Nd+Na)))="+string(xp)+"cm")//calculation.
Emax=(-e*Nd*xn)/E
disp("Emax=(-e*Nd*xn)/E)="+string(Emax)+"V/cm")//calculation.

//the value and unit of W(depletion width),provided after calculation in the book is wrong.Due to this xn,xp ,Emax also differ.
