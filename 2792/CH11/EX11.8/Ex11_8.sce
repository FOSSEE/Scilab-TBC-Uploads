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
p = 10^21
disp("p = "+string(p)+"m^-3") //initializing value of excess electron or hole density injected
T = (p/(2*To))*((2*(%pi)*h^2)/(kbT*1.6*10^-19*(me+mh)))^(3/2)
disp("T = (p/(2*To))*((2*(%pi)*h^2)/(kbT*1.6*10^-19*(me+mh)))^(3/2) = "+string(T)+"s^-1")//calculation
Tr = 1/T
disp("The e-h recombination time is Tr = 1/T = "+string(Tr)+"s")//calculation
