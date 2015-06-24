clc
Nd = 10^16
disp("Nd= "+string(Nd)+"cm^-3")//initialising value of donor atoms in centimeter
Na= 10^18
disp("Na= "+string(Na)+"cm^-3")//initialising value of accepter atoms in centimeter
Nc= 2.8*10^19
disp("Nc= "+string(Nc)+"cm^-3")//initialising value of conduction band effective density
Nv= 10^19
disp("Nv= "+string(Nv)+"cm^-3")//initialising value of valence band effective density
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
Eg = 1.1
disp("Eg = "+string(Eg)+"eV") //initializing value of forbidden energy gap
//NOTE: nn=Nd and pp=Na
eVbi = Eg+(kbT*log(Na/Nv))+((kbT*log(Nd/Nc)))
disp("built in voltage is ,eVbi = Eg-(kbT*log(Na/Nv))-((kbT*log(Nd/Nc))) = "+string(eVbi)+" eV")//calculation
apsilen = 11.9*8.85*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Vbi=eVbi/e
Nd = 10^22
disp("Nd= "+string(Nd)+"m^-3")//initialising value of donor atoms in metrers
Na= 10^24
disp("Na= "+string(Na)+"m^-3")//initialising value of accepter atomsin meters
Wp_Vbi = sqrt(((2*apsilen*eVbi)/(e))*(Nd/(Na*(Na+Nd))))
disp("depletion width at p side is ,Wp_Vbi = sqrt((2*apsilen*Vbi)/(e)*(Nd/(Na*(Na+Nd)))) = "+string(Wp_Vbi)+" m")//calculation
Wn_Vo = 100*sqrt(((2*apsilen*eVbi)/(e))*(Nd/(Na*(Na+Nd))))
disp("depletion width at n side is ,Wn_Vo = 100*sqrt((2*apsilen*Vbi)/(e)*(Nd/(Na*(Na+Nd)))) = "+string(Wn_Vo)+" m")//calculation

