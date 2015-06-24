
clc
Nd = 10^16
disp("Nd= "+string(Nd)+"cm^-3")//initialising value of donor atoms in centimeter
Na= 10^18
disp("Na= "+string(Na)+"cm^-3")//initialising value of accepter atoms in centimeter
ni = 1.5*10^10
disp("ni= "+string(ni)+"cm^-3")//initializing value of intrinsic carrier concentration
//NOTE: nn=Nd and pp=Na
R= 10*10^-6
disp("R= "+string(R)+"m") //initializing value of radius of pn diode
A = %pi*(R^2)
pn = ni^2/Nd
disp("concentration of electron in p type is ,pn = ni^2/Nd = "+string(pn)+" cm^-3")//calculation
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
eVbi = (kbT*log(Na/pn))
disp("built in voltage is ,eVbi = (kbT*log(Na/pn)) = "+string(eVbi)+" V")//calculation
apsilen = 11.9*8.84*10^-12
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron

//NOTE: for reverse bias Vr = 0 V,
Wp_4 = sqrt(((2*apsilen*eVbi)/(e))*((Nd*10^6)/((Na*10^6)*((Nd*10^6)+(Na*10^6)))))
disp("depletion width at p side is ,Wp_4 = sqrt((2*apsilen*Vbi)/(e)*(Nd/(Na*(Na+Nd)))) = "+string(Wp_4)+"m")//calculation
Wn_4 = Wp_4*100
disp("depletion width at n side is ,Wn_4 = 100*Wp_4 = "+string(Wn_4)+"m")//calculation

//for calculation purpose and for differentiating part (I), equating
Vbi_4 = eVbi

disp("")// for spacing 
Vbi_2 = Vbi_4 + 2
//NOTE: for reverse bias Vr = 2 V,
disp("Vbi_2 = "+string(Vbi_2)+"V")
Wp_2 = Wp_4*sqrt(Vbi_2/Vbi_4)
disp("depletion width at p side is ,Wp_2 = Wp_4*sqrt(Vbi_2/Vbi_4) = "+string(Wp_2)+"m")//calculation
Wn_2 = Wp_2*100
disp("depletion width at n side is ,Wn_2 = 100*Wp_2 = "+string(Wn_2)+"m")//calculation

disp("")// for spacing
Vbi_3 = Vbi_4 + 5
//NOTE: for reverse bias Vr = 5 V,
disp("Vbi_3 = "+string(Vbi_3)+"V")
Wp_3 = sqrt(((2*apsilen*eVbi)/(e))*((Nd*10^6)/((Na*10^6)*((Nd*10^6)+(Na*10^6)))))*sqrt(Vbi_3/Vbi_4)
disp("depletion width at p side is ,Wp_3 = sqrt((2*apsilen*eVbi)/(e)*(Nd/(Na*(Na+Nd))))*sqrt(Vbi_3/Vbi_4) = "+string(Wp_3)+"m")//calculation
Wn_3 = Wp_3*100
disp("depletion width at n side is ,Wn_3 = 100*Wp_3 = "+string(Wn_3)+"m")//calculation

disp("")// for spacing
Vbi_4 = Vbi_4 + 10
//NOTE: for reverse bias Vr = 10 V,
disp("Vbi_4 = "+string(Vbi_4)+"V")
Wp_4 = sqrt(((2*apsilen*eVbi)/(e))*((Nd*10^6)/((Na*10^6)*((Nd*10^6)+(Na*10^6)))))*sqrt(Vbi_4/Vbi_4)
disp("depletion width at p side is ,Wp_4 = sqrt((2*apsilen*eVbi)/(e)*(Nd/(Na*(Na+Nd))))*sqrt(Vbi_4/Vbi_4) = "+string(Wp_4)+"m")//calculation
Wn_4 = Wp_4*100
disp("depletion width at n side is ,Wn_4 = 100*Wp_4 = "+string(Wn_4)+"m")//calculation


disp("")// for spacing
Vbi_5 = Vbi_4 - 0.5
//NOTE: for forward bias Vf = 0.5 V,
disp("Vbi_5 = "+string(Vbi_5)+"V")
Wp_5 = sqrt(((2*apsilen*eVbi)/(e))*((Nd*10^6)/((Na*10^6)*((Nd*10^6)+(Na*10^6)))))*sqrt(Vbi_5/Vbi_4)
disp("depletion width at p side is ,Wp_5 = sqrt((2*apsilen*eVbi)/(e)*(Nd/(Na*(Na+Nd))))*sqrt(Vbi_5/Vbi_4) = "+string(Wp_5)+"m")//calculation
Wn_5 = Wp_5*100
disp("depletion width at n side is ,Wn_5 = 100*Wp_5 = "+string(Wn_5)+"m")//calculation

//CALCULATION   FOR    PEAK FIELD :

disp("Fm =  - e*Nd*(10^6)*Wn/apsilen")// Fmormula Fmor peak Fmield

Fm =  - e*Nd*(10^6)*Wn_4/apsilen
disp("peak Field For Vr = 0V, Fm =  - e*Nd*(10^6)*Wn_4/apsilen = "+string(Fm)+"V/m")
disp("average field, Fm/2 = "+string(Fm/2)+"V/m")

Fm =  - e*Nd*(10^6)*Wn_2/apsilen
disp("peak Field for Vr = 2V, Fm =  - e*Nd*(10^6)*Wn_2/apsilen = "+string(Fm)+"V/m")
disp("average field, Fm/2 = "+string(Fm/2)+"V/m")

Fm =  - e*Nd*(10^6)*Wn_3/apsilen
disp("peak Field For Vr = 5V, Fm =  - e*Nd*(10^6)*Wn_3/apsilen = "+string(Fm)+"V/m")
disp("average field, Fm/2 = "+string(Fm/2)+"V/m")

Fm =  - e*Nd*(10^6)*Wn_4/apsilen
disp("peak Field For Vr = 10V, Fm =  - e*Nd*(10^6)*Wn_4/apsilen = "+string(Fm)+"V/m")
disp("average field, Fm/2 = "+string(Fm/2)+"V/m")
disp("By the appendix B given in the book, the velocity of electron: v = 1*10^7 cm/s")

