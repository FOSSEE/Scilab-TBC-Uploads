//Ex3_3
clc
ICQ=12*10^(-3)
disp("ICQ = "+string(ICQ)+" ampere") // collector current
B=200
disp("B = "+string(B)+" ") //BJT gain
Cbe=100*10^(-12)// capacitance
disp("capacitance,Cbe = "+string(Cbe)+" F ")
VT=26*10^(-3)
disp("VT = "+string(VT)+" volts") // thermal voltage
gm=(ICQ/VT) //transconductance
disp("gm =(ICQ/VT)= "+string(gm)+" A/V")
hie=B/gm //forward resistance hybrid parameter
disp("hie =(B/gm)= "+string(hie)+" ohm")
fT=((1/2)*(gm/Cbe)*(1/%pi)) //unity gain frequency formulae
disp("fT =((1/2)*(gm/Cbe)*(1/%pi))= "+string(fT)+" hertz")
