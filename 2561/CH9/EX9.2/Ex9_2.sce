//Ex9_2 Refer fig.9.3(e)
clc
VD=0.7
disp("VD= "+string(VD)+" V") //  Diode voltage drop in conduction mode

disp("part(i)")// part(i)of question
vA=0
disp("vA= "+string(vA)+" V") //   Input voltage1 of diode OR logic gate
vB=0
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode OR logic gate
vX=0 // Since both input voltages vA=vB=0V
disp("vX="+string(vX)+" V") //  Output voltage of diode OR logic gate for part(i)

disp("part(ii)")// part(ii)of question
vA=0
disp("vA= "+string(vA)+" V") //  Input voltage1 of diode OR logic gate
vB=5
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode OR logic gate for  SECOND CASE: when vA=0V and vB=5V
vX=vB-VD
disp("vX=vB-VD= "+string(vX)+" V") //  Output voltage of diode OR logic gate for  SECOND CASE

disp("part(iii)")// part(iii)of question
vA=5
disp("vA= "+string(vA)+" V") //  Input voltage1 of diode OR logic gate for  THIRD CASE  when vA=5V and vB=0V
vB=0
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode OR logic gate
vX=vA-VD
disp("vX=vA-VD= "+string(vX)+" V") //  Output voltage of diode OR logic gate for  THIRD CASE

disp("part(iv)")// part(iv)of question
vA=(+5)
disp("vA= "+string(vA)+" V") //  Input voltage1 of diode OR logic gate
vB=(+5)
disp("vB= "+string(vB)+" V") //  Input voltage2 of diode OR logic gate
vX=vA-VD // Since both diodes D1 and D2 are conducting
vX=vB-VD 
disp("vX=vA-VD=vB-VD= "+string(vX)+" V") //  Output voltage of diode OR logic gate for FOURTH CASE: when vA=5V and vB=5V
