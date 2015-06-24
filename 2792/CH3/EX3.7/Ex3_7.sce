clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me1 = 0.065*9.1*10^-31
disp("me*(GaAs) = "+string(me1)+"kg") //initializing value of electron mass of GaAs
me2 = 0.02*9.1*10^-31
disp("me*(InAs) = "+string(me2)+"kg") //initializing value of electron mass of InAs
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Eg1 = 1.5*1.6*10^-19
disp("Eg(GaAs) = "+string(Eg1)+"J") //initializing value of valence bandedge energy of GaAs
Eg2 = 0.4052*1.6*10^-19
disp("Eg(InAs) = "+string(Eg2)+"J") //initializing value of valence bandedge energy of InAs
F= 2*10^7
disp("F = "+string(F)+"V(cm)^-1") //initializing value of applied electric field 
T1 = exp(-(4*sqrt(2*me1)*(Eg1)^(3/2))/(3*e*h*F))
disp("The tunneling probability in GaAs is T1 = exp(-(4*sqrt(2*me1)*(Eg1)^(3/2))/(3*e*h*F)) = "+string(T1)+"")//calculation
T2 = exp(-(4*sqrt(2*me2)*(Eg2)^(3/2))/(3*e*h*F))
disp("The tunneling probability in InAs is T2 = exp(-(4*sqrt(2*me2)*(Eg2)^(3/2))/(3*e*h*F)) = "+string(T2)+"")//calculation
//NOTE: The tunneling probability in GaAs is approximately given zero in the textbook
