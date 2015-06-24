clc
//Chapter7
//Example7.5, page no 283
//Given
Fif=15// Noise figure of IF amplifier
Ap1=10// Gain of Preamplifier
Fpa=6//Noise figure of preamplifier
F2=10^(Fif/10)
F1=10^(Fpa/10)

F=F1+((F2-1)/Ap1)//overall noise figure
mprintf('The overall noise figure is: %f',F)
