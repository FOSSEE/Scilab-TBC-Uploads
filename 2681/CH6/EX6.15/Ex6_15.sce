//characteristic impedance
//given
clc
Zl=300//ohm
Zo=75//ohm//of the line
SWR=1//the source impedence is equal to characteristic impedance of the line
Zt=sqrt(Zl*Zo)
disp(Zt,'the  characteristic impedance  in ohm')
