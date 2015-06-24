//characteristic impedance
//given
clc
L=1.5d-6//H/m
C=10d-12//F
Zo=sqrt(L/C)
Zo=round(Zo)///rounding off decimals
disp(Zo,'the characteristic impedence in ohm')//ohm
