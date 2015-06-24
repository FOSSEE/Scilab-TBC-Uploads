clc
A= 10^-7
disp("A= "+string(A)+"m^2") //initializing value of diode area
Na=10^18*10^6
disp("Na = "+string(Na)+"m^-3") //initializing value of acceptor atoms
Nd=10^16*10^6
disp("Nd = "+string(Nd)+"m^-3") //initializing value of donor atoms
Dp1 = 7.8*10^-4
disp("Dp1= "+string(Dp1)+"m^2/s")//initializing value of hole diffusion coefficient of n - side
Dn2 = 7.3*10^-4
disp("Dn2= "+string(Dn2)+"m^2/s")//initializing value of electron diffusion coefficient of p-side
Tn = 10^-6
disp("Tn= "+string(Tn)+"s")//inializing value of electron minority carrier lifetime
Tp = 10^-6
disp("Tp= "+string(Tp)+"s")//inializing value of hole minority carrier lifetime
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
ni = 1.5*10^16
disp("ni= "+string(ni)+"m^-3")//initializing value of intrinsic carrier concentration
//NOTE: nn=Nd and pp=Na
Lp = sqrt(Dp1*Tp)
disp("The hole diffusion length is ,Lp = sqrt(Dp1*Tp)= "+string(Lp)+"m")//calculation
Ln = sqrt(Dn2*Tn)
disp("The electron diffusion length is ,Ln = sqrt(Dn2*Tn)= "+string(Ln)+"m")//calculation
// NOTE: pn= (ni^2/nn) and np=(ni^2/pp)
// assume that the doants are fully ionised 
Io = A*e*((((Dn2)/(Ln))*(ni^2/Na))+(((Dp1)/(Lp))*(ni^2/Nd)))
disp("The prefactor current is ,Io = A*e*(((Dn/Ln)*ni^2)+((Dp/Lp)*ni^2))= "+string(Io)+"A")//calculation



