clc
Ndc = 10^16
disp("Ndc= "+string(Ndc)+"cm^-3")//inializing value of collector doping
Nab = 5*10^16
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
Wb = .2*10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
Vpt= ((e*(Wb^2)*Nab*(Ndc+Nab))/(2*apsilen*Ndc))
disp("The punchthrough voltage is ,Vpt= (e*(Wb^2)*Nab*(Ndc+Nab))/(2*apsilen*Ndc)= "+string(Vpt)+"V")//calculation
Twb = 1.2*10^-4
disp("Twb= "+string(Twb)+"cm")//initializing value of total depletion width
F = Vpt/Twb
disp("The average field at punchthrough voltage is ,F = Vpt/Twb= "+string(F)+"V/cm")//calculation

// Note : due to different precisions taken by me and the author ... my answer differ by "0.16" value.

