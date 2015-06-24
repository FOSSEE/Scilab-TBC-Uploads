//Example 9.5.
clc
Rs=1200
RL=1000
hib=22
hrb=3*10^-4
hfb=-0.98
hob=0.5*10^-6
format(5)
disp("      Exact analysis")
AI=-hfb/(1+(hob*RL))
disp(AI,"Current gain,      AI = -hfb / (1 + hob*RL) =")
Ri=hib+(hrb*AI*RL)
disp(Ri,"Input impedance,      Ri(ohm) = hib + hrb*AI*RL =")
format(7)
Av=(AI*RL)/Ri
disp(Av,"Voltage gain,      Av = AI*RL / Ri =")
format(6)
Avs=(Av*Ri)/(Ri+Rs)
disp(Avs,"Overall current gain,      Avc = Av*Ri / Ri+Rs =")
AIS=(AI*Rs)/(Ri+Rs)
disp(AIS,"Overall current gain,      AIS = AI*Rs / Ri+Rs =")
format(7)
Yo=hob-((hfb*hrb)/(hib+Rs))
x1=Yo*10^6
disp(x1,"Output admittance,      Yo(u-mho) = hob * (hfb*hrb / hib+Rs) =")
format(8)
Ro=1/Yo
x2=Ro*10^-6
disp(x2,"      Ro(M-ohm) = 1 / Yo =")
format(6)
AP=Av*AI
disp(AP,"Power gain,      AP = Av*AI =")
disp("")
disp("Approximate analysis")
AI=-hfb
disp(AI,"Current gain,      AI = -hfb =")
Ri=hib
disp(Ri,"Input impedance,      Ri(ohm) = hib =")
disp("Voltage gain,      Av = hfe*RL / hie")
disp("From Table 9.3,      hfb = -hfe / 1+hfe")
hfe = -hfb / (1+hfb)
disp(hfe,"Reaaranging this equation,      hfe = -hfb / 1+hfb =")
disp("From Table 9.3,      hib = hie / 1+hfe")
hie=hib*(1+hfe)
disp(hie,"      hie(ohm) = hib(1+hfe) =")
Av=hfe*RL / hie
disp(Av,"      Av =")
disp("Output impedance,      Ro = infinity")
Avs=(Av*Ri)/(Ri+Rs)
disp(Avs,"Overall voltage gain,      Avs = Av*Ri / Ri+Rs =")
AIS=(AI*Rs)/(Ri+Rs)
disp(AIS,"Overall current gain,      AIS = AI*Rs / Ri+Rs =")
AP=Av*AI
disp(AP,"Power gain,      AP = Av*AI =")