clc
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
GL= 10^22
disp("GL= "+string(GL)+"cm^-3/s") //initializing value of rate of optical signal
A= 10^-4
disp("A= "+string(A)+"cm^2") //initializing value of diode area
Vr= 15
disp("Vr= "+string(Vr)+"V") //initializing value of reverse bias voltage
Na=2*10^16
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor atoms
Nd=10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atoms
Dp = 12
disp("Dp= "+string(Dp)+"cm^2/s")//initializing value of hole diffusion coefficient 
Dn = 20
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient 
Tn = 10^-8
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-8
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"cm")//calculation
Lp = sqrt(Dp*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp*Tp)= "+string(Lp)+"cm")//calculation
Vbi = kbT*log((Na*Nd)/ni^2)
disp("The built in voltage is ,Vbi = kbT*log((Na*Nd)/ni^2)= "+string(Vbi)+"V")//calculation
W = sqrt(((2*apsilen)/e)*((Na+Nd)/(Na*Nd))*(Vbi+Vr))
disp("The depletion width is ,W = sqrt(((2*apsilen)/e)*((Na+Nd)/(Na*Nd))*(Vbi+Vr))= "+string(W)+"cm")//calculation
IL = e*A*GL*(W+Ln+Lp)
disp("The photo current is IL = e*A*GL*(W+Ln+Lp)= "+string(IL)+"A")//calculation

