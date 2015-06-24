clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.067*9.1*10^-31
disp("me* = "+string(me)+"kg") //initializing value of electron mass of InAs
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
mh = 0.45*9.1*10^-31
disp("mh*= "+string(mh)+"kg")//initializing value of hole density of state mass
To = .6*10^-9
disp("To = "+string(To)+"s") //initializing value of minimum recombination time
tnr = 10^-7
disp("tnr = "+string(tnr)+"s") //initializing value of nonradiative recombination time
p = 10^21
disp("p = "+string(p)+"m^-3") //initializing value of excess electron or hole density injected
mr = 1/((1/me)+(1/mh))
disp("The reduced mass for the e-h system is mr* = 1/((1/me)+(1/mh)) = "+string(mr)+"kg")//calculation
disp("           For low p-doping such as 10^16, the recombination time is given as below")
T1 = (p/(2*To))*((2*(%pi)*h^2)/(kbT*1.6*10^-19*(me+mh)))^(3/2)
disp("T = (p/(2*To))*((2*(%pi)*h^2)/(kbT*1.6*10^-19*(me+mh)))^(3/2) = "+string(T1)+"s^-1")//calculation
Tr1 = 1/T1
disp("The e-h recombination time is Tr1 = 1/T1 = "+string(Tr1)+"s")//calculation
nQr1 = 1/(1+(Tr1/tnr))
disp("The internal quantum efficiency  is nQr1 = 1/(1+(Tr1/tnr)) = "+string(nQr1))//calculation
disp("         For high p-doping such as 5*10^17, the recombination time is given as below")
T2 = (1/To)*((mr/mh)^(3/2))
disp("T2 = (1/To)*((mr/mh)^(3/2)) = "+string(T2)+"s^-1")//calculation
Tr2 = 1/T2
disp("The e-h recombination time is Tr2 = 1/T2 = "+string(Tr2)+"s")//calculation
nQr2 = 1/(1+(Tr2/tnr))
disp("The internal quantum efficiency  is nQr2 = 1/(1+(Tr2/tnr)) = "+string(nQr2))//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
