//Zo of a two wire transmission  line
//given
clc
L=1D-3//H/Km
C=0.25D-6//F/Km
Zo=sqrt(L/C)//ohm
Zo=round(Zo*100)/100///rounding off decimalssc
disp(Zo,'the Zo for two wire transmission line  in ohm:')//ohm
