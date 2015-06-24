clc
Nc=2.8*10^(19)
disp("Nc = "+string(Nc)+"cm^-3") 
Nv=1.04*10^(19)
disp("Nv = "+string(Nv)+"cm^-3") 
//NOTE: Ec-Ev = forbidden band gap energy = Eg
Eg = 1.1
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
n= 10^17
disp("n = "+string(n)+"cm^-3") 
p= 10^17
disp("p = "+string(p)+"cm^-3") 
Efn_minus_Efp = Eg+(kbT*(log(p/Nv)+log(n/Nc)))
disp("The difference in the quasi fermi level is ,Efn_minus_Efp = Eg+(kbT*(log(p/Nv)+log(n/Nc))) = "+string(Efn_minus_Efp)+"eV")//calculation
n= 10^15
disp("n = "+string(n)+"cm^-3") 
p= 10^15
disp("p = "+string(p)+"cm^-3") 
Efn_minus_Efp = Eg+(kbT*(log(p/Nv)+log(n/Nc)))
disp("The difference in the quasi fermi level is ,Efn_minus_Efp = Eg+(kbT*(log(p/Nv)+log(n/Nc))) = "+string(Efn_minus_Efp)+"eV")//calculation 


