//Example 9.6.refer fig.9.16.
clc
hib=24
hfb=-0.98
hob=0.49*10^-6
hrb=2.9*10^-4
RS=600
RE=6*10^3
RC=12*10^3
RL=14*10^3
disp("Current gain,      AI = -hfb / 1+hob*RL''")
format(5)
RLd=(RC*RL)/(RC+RL)
x1=RLd*10^-3
disp(x1,"where,      RL''(k-ohm) = RC || RL =")
format(6)
AI=-hfb / (1+hob*RLd)
disp(AI,"      AI =")
disp("Input impedance Ri :")
Ri=hib+(hrb*AI*RLd)
disp(Ri,"      Ri(ohm) = hib + hrb*AI*RL'' =")
disp("Voltage gain Av :")
format(7)
Av=(AI*RLd)/Ri
disp(Av,"      Av = (AI*RL'') / Ri =")
disp("Output Resistance Ro :")
disp("The output admittance")
format(6)
RSd=(RS*RE)/(RS+RE)
Yo=hob-((hfb*hrb)/(hib+RSd))
x4=Yo*10^6
disp(x4,"      Yo(u-mho) = 1 / Ro = hob - (hfb*hrb / hib+RS'') =       where RS'' = RS || RE")
Ro=1/Yo
x2=Ro*10^-6
disp(x2,"      Ro(M-ohm) = 1 / Yo =")
format(5)
RSd=(Ro*RLd)/(Ro+RLd)
x3=RSd*10^-3
disp(x3,"      RS''(k-ohm) = Ro || RL'' =")