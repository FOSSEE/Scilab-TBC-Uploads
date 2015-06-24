clc
A= 0.1*10^-2
disp("A= "+string(A)+"cm^2") //initializing value of diode area
Vf= 1
disp("Vf= "+string(Vf)+"V") //initializing value of forward bias voltage
E= 1.43
disp("E= "+string(E)+"eV") //initializing value of energy of 1 photon
Na=5*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor atoms
Nd=5*10^17
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atoms
Dp = 15
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient 
Dn = 30
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient 
Tn = 10^-8
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
ni = 1.84*10^6
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
np=ni^2/Na
disp("The electron conc in p type is ,np=ni^2/Na= "+string(np)+"cm^-3")//calculation
pn=ni^2/Nd
disp("The holes conc in n type is ,pn=ni^2/Nd= "+string(pn)+"cm^-3")//calculation
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"cm")//calculation
In = ((e*A*Dn*np)/Ln)*(exp(Vf/kbT)-1)
disp("The electron current is ,In = ((e*A*Dn*np)/Ln)*(exp(Vf/kbT)-1)= "+string(In)+"A")//calculation
In_by_e = In/e
disp("The electron generation rate is ,In_by_e = In/e= "+string(In_by_e)+"s^-1")//calculation
power = In*E
disp("The optical power of photon is ,power = In*E= "+string(power)+"W")//calculation


