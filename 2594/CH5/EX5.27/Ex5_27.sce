clc
Na=5*10^15
disp("Na = "+string(Na)+"cm^3") //initializing value of acceptor concentration.
Nd=10^18
disp("Nd = "+string(Nd)+"cm^3") //initializing value of donor concentration .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic carrier concentration.
Vr1=0
disp("Vr1 = "+string(Vr1)+"V") //initializing value of built in voltage.
Vr2=5
disp("Vr2 = "+string(Vr2)+"V") //initializing value of applied reverse voltage.
A=3*10^-5
disp("A = "+string(A)+"cm^2") //initializing value of cross sectional area.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er="+string(E)+" F/cm")//calculation.
Vt=0.0259
disp("Vt="+string(Vt)+" V")//initializing the value of thermal voltage .
Vbi=((Vt)*log((Na*Nd)/(no)^2))
disp("Built in potential ,Vbi=(Vt*log((Na*Nd)/(no)^2))="+string(Vbi)+" V")//calculation.
Cj1=sqrt((e*E*(A^2)/(2*(Vr1+Vbi)))*((Na*Nd)/(Na+Nd)))
disp("Cj1=sqrt((e*E*(A^2)/(2*(Vr1+Vbi))*((Na*Nd)/(Na+Nd))))="+string(Cj1)+" F")//calculation.
Cj2=sqrt((e*E*(A^2)/(2*(Vr2+Vbi)))*((Na*Nd)/(Na+Nd)))
disp("Cj2=sqrt((e*E*(A^2)/(2*(Vr2+Vbi))*((Na*Nd)/(Na+Nd))))="+string(Cj2)+" F")//calculation.
//the value of Vr2 use for calculating answer of Cj2 is different than provided in question.
//I have used the value provided in the solution (i.e.Vr2=5) 
