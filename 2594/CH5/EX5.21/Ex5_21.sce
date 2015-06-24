clc
Vbi=1.2
disp("Vbi = "+string(Vbi)+"/cm^3") //initializing value of built in voltage.
no=1.8*10^6
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
Er=13.1
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
NaNd=((no^2)*(exp(Vbi/Vt)))
disp("(a)NaNd=((no^2)*(exp(Vbi/Vt)))="+string(NaNd)+" /cm^6")//calculation.
Na=(sqrt(NaNd/(4)))
disp("Na=(sqrt(NaNd/(4)))="+string(Na)+" /cm^3")//calculation.
Nd=4*Na
disp("(b)Nd=4*Na="+string(Nd)+" /cm^3")//calculation.
W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd)))
disp("(c)W=sqrt((2*E*Vbi/e)*((Nd+Na)/(Na*Nd))))="+string(W)+" cm")//calculation.
xn=0.2*W
disp("(d)xn=0.2*W="+string(xn)+" cm")//calculation.
xp=0.8*W
disp("xp=0.8*W="+string(xp)+" cm")//calculation.
Emax=(-e*Nd*xn)/E
disp("(e)Emax=(-e*Nd*xn)/E)="+string(Emax)+"V/cm")//calculation.
//The value of Na after calculation is provided wrong in the book.Due to which value of W,xn,xp and Emax differ ,than the answer provided in the book.






