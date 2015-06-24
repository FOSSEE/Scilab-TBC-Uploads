//Ex9_3 Refer fig.9.4(e)
// For AND logic gate
clc
VD=0.7
disp("VD= "+string(VD)+" V") //  Diode voltage drop in conduction mode

disp("part(i)")
vA=0
disp("vA= "+string(vA)+" V") //  Input voltage of diode AND logic gate
vB=0
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode  AND logic gate

vX=VD // Since both input voltages vA=vB=0V
disp("vX=VD="+string(vX)+" V") //  Output voltage of diode  AND logic gate for FIRST CASE: when vA=0V and vB=0V

disp("part(ii)")
vA=0
disp("vA= "+string(vA)+" V") //  Input voltage of diode AND logic gate
vB=5
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode AND logic gate for  SECOND CASE: when vA=0V and vB=5V
vX=VD //due to diode A which is  conducting and the Diode B is reverse biased with a voltage VD-VB=0.7-5=-4.3
disp("vX=VD "+string(vX)+" V")
//due to diode B which is conducting



disp("part(iii)")
vA=5
disp("vA= "+string(vA)+" V") //  Input voltage for  THIRD CASE  when vA=5V and vB=0V
vB=0
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode  AND logic gate
vX = VD//due to diode B which is  conducting and the Diode A is reverse biased with a voltage VD-VA=0.7-5=-4.3
disp("vX= "+string(vX)+" V")

disp("part(iv)")
vA=5
disp("vA= "+string(vA)+" V") //  Input voltage forfourth CASE  when vA=5V and vB=5V
vB=5
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode AND logic gate for  CASE: when vA=0V and vB=5V
vX=vA // Since both diodes D1 and D2 are Non-conducting, so no voltage drop across'R'(resistor)
disp("vX = vA = vB= "+string(vX)+" V") //  Output voltage of diode  AND logic gate for FOURTH CASE: when vA=5V and vB=5V
