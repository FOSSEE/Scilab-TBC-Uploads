clc
Na=3*10^16
disp("Na = "+string(Na)+" /cm^3") //initializing value of acceptor ion  concentration.
Vms=-1.12
disp("Vms = "+string(Vms)+"V") //initializing value of metal semiconductor work function difference.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of permittivity of free space.
ni=1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of intrinsic concentration of electrons.
e=1.6*10^-19
disp("e = "+string(e)+" columns") //initializing value of charge of electrons.
tox=300*10^-8
disp("tox = "+string(tox)+" cm") //initializing value of thickness of p-type substrate.
Vfb=-1.12
disp("Vfb = "+string(Vfb)+" V") //initializing value of flat band voltage.
Qss=10^11
disp("Qss = "+string(Qss)+" electronic charge columns/cm^2") //initializing value of charge density on semiconductor surface.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
er=3.9
disp("er = "+string(er)) //initializing value of relative dielectric permittivity constant 
Eox=Eo*Er
disp("total permittivity,Eox=Eo*Er="+string(Eox)+" F/cm")//calculation
Vfp=Vt*(log(Na/(ni)))
disp("Potential,Vfp=Vt*(log(Na/(ni))))="+string(Vfp)+" V")//calculation
Wd=sqrt((4*Eox*Vfp)/(e*Na))
disp("Maximum depletion width,Wd=sqrt((4*E*Vs)/(e*Nd)))="+string(Wd)+" cm")//calculation
QDmax=(e*Na*Wd)
disp("Over all maximum depletion width,QDmax=(e*Na*Wd))="+string(QDmax)+" columns/cm^2")//calculation
VT=(((QDmax-1.6*10^-8)*tox)/(er*Eo))+(2*Vfp+Vfb)
disp("Thresold Voltage,VT=(((QDmax-1.6*10^-8)*tox)/(er*Eo))+(2*Vfp+Vfb)="+string(VT)+" V")//calculation
