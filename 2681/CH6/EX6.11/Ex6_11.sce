//maximum impedance of the line
//given
clc
Zo=75//ohm
VSWR=3//voltage standing wave ratio
Zmax=VSWR*Zo//ohm
disp(Zmax,'the maximum impedance of the line for the given VSWR IN ohm')//ohm
