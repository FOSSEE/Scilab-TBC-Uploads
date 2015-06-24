//Example 9.4.refer fig.9.14.
clc
hic=1.4*10^3
hfc=-100
hrc=1
hoc=20*10^-6
R1=20*10^3
RS=1*10^3
R2=20*10^3
RE=10*10^3
RL=40*10^3
disp("Current gain,        AI = -hfc / 1+hoc*RL''")
RLd=(RE*RL)/(RE+RL)
x1=RLd*10^-3
disp(x1,"where,        RL''(k-ohm) = RE || RL =")
format(5)
AI = -hfc / (1+(hoc*RLd))
disp(AI,"Therefore,  AI =")
Ri=hic+(hrc*AI*RLd)
x2=Ri*10^-3
disp(x2,"Input resistance,        Ri(k-ohm) = hic + hrc*AI*RL'' =")
format(6)
Av=(AI*RLd)/Ri
disp(Av,"Voltage gain,        Av = AI*RL'' / Ri =")
disp("Output resistance,        Ro = 1 / Yo")
disp("        Yo = hoc - (hfc*hrc)/(hic+RS'')")
format(4)
RSd=(RS*R1*R2)/((R1*R2)+(RS*R2)+(RS*R1))
x3=RSd*10^-3
disp(x3,"where,        RS''(k-ohm) = RS || R1 || R2 =")
format(6)
Yo = hoc - ((hfc*hrc)/(hic+RSd))
disp(Yo,"        Yo =")  // answer in textbook is wrong
Ro=1/0.0435
disp(Ro,"        Ro(ohm) =")
Rod=(Ro*RLd)/(Ro+RLd)
disp(Rod,"        Ro''(ohm) = Ro || RLdash =")