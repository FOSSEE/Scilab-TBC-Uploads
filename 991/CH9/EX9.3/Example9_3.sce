//Example 9.3.
clc
RS=900
RL=2000
hie=1200
hre=2*10^-4
hfe=60
hoe=25*10^-6
disp("Conversion formulae :")
hic=hie
disp("      hic = hie = 1200 ohm,")
hfc=-(1+hfe)
disp(hfc,"      hfc = -(1+hfe) =")
disp("hre = 1, hoc = hoe = 25 uA/V")
hoc=hoe
hre=1
disp("Exact analysis :")
format(7)
AI=-hfc/(1+(hoc*RL))
disp(AI,"Current gain,      AI = -hfe / (1 + (hoc*RL)) =")
format(8)
Ri=hic + (hre*AI*RL)
x1=Ri*10^-3
disp(x1,"Input impedance,      Ri(k-ohm) = hic + hrc*AI*RL =")
format(7)
Av=(AI*RL)/Ri
disp(Av,"Voltage gain,      Av = AI*RL / Ri =")
Yo=hoc-((hfc*hre)/(hic+RS))
disp("Output resistance, Ro :")
disp(Yo,"      Yo(mho) = 1/Ro = hoc - (hfc*hrc/hic+Rs) =")
Ro=1/Yo
disp(Ro,"      Ro(ohm) =")
disp("Approximate analysis :")
AI=1+hfe
disp(AI,"Current gain,      AI = 1 + hfe =")
Ri=hie+((1+hfe)*RL)
x2=Ri*10^-3
disp(x2,"Input impedance,      Ri(k-ohm) = hie + (1+hfe)RL =")
Av=1-(hie/Ri)
disp(Av,"Voltage gain,      Av = 1 - hie/Ri =")
disp("Output resistance,      Ro:")
format(6)
Yo=(1+hfe)/(hie+RS)
disp(Yo,"      Yo(mho) = (1+hfe) / (hie+RS) =")
Ro=1/Yo
disp(Ro,"      Ro(ohm) =")