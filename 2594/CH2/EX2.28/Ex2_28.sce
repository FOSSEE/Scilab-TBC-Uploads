clc
Nv1=1.04*10^19
disp("Nv = "+string(Nv1)+" cm^-3")//initializing the value of valence band concentration at 300K.
Ef_Ev=0.3
disp("Ef_Ev = "+string(Ef_Ev)+" eV")//initializing the value of boron acceptor ionization energy.
T1=300
disp("T = "+string(T1)+"K")//initializing the value of temperature 1.
T2=500
disp("T = "+string(T2)+"K")//initializing the value of temperature 2.
Vt1=0.0259
disp("Vt1 = "+string(Vt1)+"eV")//initializing the value of thermal voltage at 300K.
k=1.38*10^-23
disp("k = "+string(k)+"J/K") //initializing value of boltzmann constant.
e=1.6*10^-19
disp("e = "+string(e)+"columb") //initializing the value of electronic charge.
K1=(Nv1/((T1)^(3/2)))
disp("Value of constant,K1=(Nv/((T)^(3/2)))= "+string(K1)+" cm^-3 K(-2/3)")//calculation
Nv2=K1*T2^(3/2)
disp("Value of valence band concentration at 500K,Nv=K1*T(3/2)= "+string(Nv2)+" cm^-3")//calculation
VT=(k*T2/e)
disp("Value of parameter VT at 500K,VT=(K*T/e)= "+string(VT)+" cm^-3")//calculation
p=(Nv2*(exp(-(Ef_Ev)/(VT))))
disp("Hole concentration,p=(Nv*(exp(Ef_Ev)/(VT)))= "+string(p)+" cm^-3")//calculation

//this is solved problem 2.16 of chapter 2.
