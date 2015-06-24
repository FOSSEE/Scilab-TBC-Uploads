clc
Ew=4.55
disp("Ew = "+string(Ew)+" V") //initializing value of work function of tungusten.
X=4.01
disp("X = "+string(X)+"V") //initializing value of electron effinity of silicon.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant.
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+"/cm^-3") //initializing value of effective density of state in the conduction band.
Nd=10^17
disp("Nd = "+string(Nd)+"/cm^-3") //initializing value of donor concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
VB=(Ew-X)
disp("Barrier height,VB=(Ew-X) = "+string(VB)+" V") // calculation.
Ec_Ef=(Vt*log(Nc/Nd))
disp("Ec_Ef=(Vt*log(Nc/Nd))="+string(Ec_Ef)+" V")//calculation
VBI=(VB-(Ec_Ef))
disp("VBI=(VB-(Ec_Ef))="+string(VBI)+" V")//calculation
xn=sqrt(2*Eo*Er*VBI/(e*Nd))
disp("Depletion width,xn=sqrt(2*Eo*Er*VBI/(e*Nd))="+string(xn)+" cm")//calculation
Emax=(e*Nd*xn/(Eo*Er))
disp("maximum electric field,Emax=(e*Nd*xn/(Eo*Er))="+string(Emax)+" V/cm")//calculation




