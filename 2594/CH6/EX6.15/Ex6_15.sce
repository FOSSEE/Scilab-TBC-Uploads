clc
Ew=5.1
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
Nd=5*10^15
disp("Nd = "+string(Nd)+"/cm^-3") //initializing value of donor concentration.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
Vr=5
disp("Vr = "+string(Vr)+" V") //initializing value of  reverse voltage.
A=1*10^-4
disp("A = "+string(A)+" cm^2") //initializing value of area of the gold silicon junction diode..
VB=(Ew-X)
disp("barrier height,VB=(Ew-X) = "+string(VB)+" V") // calculation.
Ec_Ef=(Vt*log(Nc/Nd))
disp("Ec_Ef=(Vt*log(Nc/Nd))="+string(Ec_Ef)+" V")//calculation
VBI=(VB-(Ec_Ef))
disp("VBI=(VB-(Ec_Ef))="+string(VBI)+" V")//calculation
C1=sqrt((e*Eo*Er*Nd)/(2*(VBI+Vr)))
disp("Capitance per unit area,C1=sqrt((e*Eo*Er*Nd)/(2*(VBI+Vr)))="+string(C1)+" F/cm^2")//calculation
C=C1*A
disp("total junction capatiance,C=C1*A="+string(C)+" F")//calculation
