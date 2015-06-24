clc
A= 10^-8
disp("A= "+string(A)+"m^2") //initializing value of diode area
Na=10^23
disp("Na = "+string(Na)+"m^-3") //initializing value of acceptor atoms
Nd=10^23
disp("Nd = "+string(Nd)+"m^-3") //initializing value of donor atoms
Dp = 10*10^-4
disp("Dp= "+string(Dp)+"m^2/s")//initializing value of hole diffusion coefficient 
Dn = 30*10^-4
disp("Dn= "+string(Dn)+"m^2/s")//initializing value of electron diffusion coefficient
Tn = 10^-7
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
tau = 10^-8
disp("tau= "+string(tau)+"s")//inializing value of carrier lifetime in depletion region
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
ni = 1.5*10^16
disp("ni= "+string(ni)+"m^-3")//initializing value of intrinsic carrier concentration
apsilen = 11.9*8.85*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
//NOTE: nn=Nd and pp=Na
Lp = sqrt(Dp*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp*Tp)= "+string(Lp)+"m")//calculation
Ln = sqrt(Dn*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn*Tn)= "+string(Ln)+"m")//calculation
// NOTE: pn= (ni^2/nn) and np=(ni^2/pp)
np=ni^2/Na
disp("The electron conc in p type is ,np=ni^2/Na= "+string(np)+"m^-3")//calculation
pn=ni^2/Nd
disp("The holes conc in n type is ,pn=ni^2/Nd= "+string(pn)+"m^-3")//calculation
Vbi = kbT*log((Na*Nd)/ni^2)
disp("The built in voltage is ,Vbi = kbT*log((Na*Nd)/ni^2)= "+string(Vbi)+"V")//calculation
Io = e*((((Dn)*np)/(Ln))+((Dp*pn)/(Lp)))
disp("The prefactor in the ideal diode  is ,Io = e*(((Dn*np)/(Ln))+((Dp*pn)/(Lp)))= "+string(Io)+"A")//calculation
//let Vf = 0.5 V 
Vf = 0.5
disp("Vf= "+string(Vf)+"V") //initializing value of forward bias voltage
W = sqrt((2*apsilen/e)*((Na+Nd)/Nd/Na)*(Vbi-Vf))
disp("The depletion width is ,W = sqrt(((2*apsilen)/e)*((Na*Nd)/(Na+Nd))*(Vbi-Vf))= "+string(W)+"m")//calculation
Io_GR  = e*A*W*ni/(2*tau)
disp("prefactor for recombination generation current, Io_GR = "+string(Io_GR)+"A")
I = (Io*exp(Vf/kbT))+(Io_GR*exp(Vf/(2*kbT)))
I_V1 = I
disp("Current, I = (Io*exp(Vf/kbT))+(Io_GR*exp(Vf/kbT)) = "+string(I)+"A")

//let V = 0.6 V 
Vf = 0.6
disp("Vf= "+string(Vf)+"V") //initializing value of forward bias voltage
W = sqrt((2*apsilen/e)*((Na+Nd)/Nd/Na)*(Vbi-Vf))
disp("The depletion width is ,W = sqrt(((2*apsilen)/e)*((Na*Nd)/(Na+Nd))*(Vbi-Vf))= "+string(W)+"m")//calculation
Io_GR  = e*A*W*ni/2/tau
disp("prefactor for recombination generation current, Io_GR = "+string(Io_GR)+"A")
I = (Io*exp(Vf/kbT))+(Io_GR*exp(Vf/(2*kbT)))
I_V2 = I
disp("Current, I = (Io*exp(Vf/kbT))+(Io_GR*exp(Vf/kbT)) = "+string(I)+"A")
V1 = 0.5
V2 = 0.6
n = e*(V2-V1)/kbT/log(I_V2/I_V1)
disp("Ideallity factor ,n = e*(V2-V1)/kbT/log(I_V2/I_V1) = "+string(n))
//note: in the text book the value of 
//-+"prefactor of ideal diode equation, Io" 
//calculated by author is wrong thus it efect the overall calculation of the solution
