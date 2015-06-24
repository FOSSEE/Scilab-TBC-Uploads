clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
A= 10^-7
disp("A= "+string(A)+"m^2") //initializing value of diode area
Na=10^18*10^6
disp("Na = "+string(Na)+"m^-3") //initializing value of acceptor atoms
Nd=10^16*10^6
disp("Nd = "+string(Nd)+"m^-3") //initializing value of donor atoms
Dp = 7.8*10^-4
disp("Dp= "+string(Dp)+"m^2/s")//initializing value of hole diffusion coefficient of n - side
Dn = 7.3*10^-4
disp("Dn= "+string(Dn)+"m^2/s")//initializing value of electron diffusion coefficient of p-side
ni = 1.5*10^16
disp("ni= "+string(ni)+"m^-3")//initializing value of intrinsic carrier concentration
Wln = 5*10^-6
disp("The short diode width is ,Wln "+string(Wln)+"m")
Wlp = Wln
//NOTE: nn=Nd and pp=Na
pn = ni^2/Nd
disp("concentration of electron in p type is ,pn = ni^2/Nd = "+string(pn)+" cm^-3")//calculation
np = ni^2/Na
disp("concentration of electron in n type is ,np = ni^2/Na = "+string(np)+" cm^-3")//calculation
// from example 5.4 and 5.2 we get the value of diffusion length and zero bias depletion widths
Lp = 27.9*10^-6
disp("The electron diffusion length is ,Lp "+string(Lp)+"m")
Ln = 27*10^-6
disp("The electron diffusion length is ,Ln "+string(Ln)+"m")
Wp = 3.262D-09
disp("The zero bias depletion widths is ,Wp "+string(Wp)+"m")
Wn = 0.0000003
disp("The zero bias depletion widths is ,Wn "+string(Wn)+"m")
// for short diode the prefactor current is given as
Io = e*A*(((Dp*pn)/(Wln-Wn))+((Dn*np)/abs(Wlp-Wp)))
disp("The prefactor current is ,Io = e*A*(((Dp*pn)/(Wln-Wn))+((Dn*np)/abs(Wlp-Wp)))= "+string(Io)+"A")//calculation
// The prefactor current of short diode is approximately increase by a factor of 5.6 from that of long diode
// Note : due to different precisions taken by me and the author ... my answer differ 
