clc
Ew=4.5
disp("Ew = "+string(Ew)+" V") //initializing value of work function of tungusten.
X=4.01
disp("X = "+string(X)+"V") //initializing value of electron effinity of silicon.
Er=12
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
Vr=3
disp("Vr = "+string(Vr)+" V") //initializing value of  reverse voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+"/cm^-3") //initializing value of effective density of state in the conduction band.
Nd=10^17
disp("Nd = "+string(Nd)+"/cm^-3") //initializing value of donor concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
VB=(Ew-X)
disp("barrier height,VB=(Ew-X) = "+string(VB)+" V") // calculation.
Ec_Ef=(Vt*log(Nc/Nd))
disp("Ec_Ef=(Vt*log(Nc/Nd))="+string(Ec_Ef)+" V")//calculation
VBI=(VB-(Ec_Ef))
disp("VBI=(VB-(Ec_Ef))="+string(VBI)+" V")//calculation
xn=sqrt((2*Eo*Er*(VBI+Vr))/(e*Nd))
disp("Depletion width,xn=sqrt(2*Eo*Er*(VBI+Vr)/(e*Nd))="+string(xn)+" cm")//calculation
Emax=(e*Nd*xn/(Eo*Er))
disp("maximum electric field,Emax=(e*Nd*xn/(Eo*Er))="+string(Emax)+" V/cm")//calculation
C=sqrt((e*Eo*Er*Nd)/(2*(VBI+Vr)))
disp("Capitance per unit area,C=sqrt((e*Eo*Er*Nd)/(2*(VBI+Vr)))="+string(C)+" F/cm^2")//calculation
//the Value of reverse voltage(Vr) provided in the question is different than used in the solution.I have used the value provided in the solution(i.e Vr=3). 
//the value of C (Capitance per unit area) after calculation is provided wrong in the book.







