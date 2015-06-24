clc
//Initialization of variables
vOH=5*10^-3 //L
vHClO=25*10^-3 //L
C=0.2 //mol/L
//calculations
nOH=vOH*C
nHClO=vHClO*C/2
nrem=nHClO-nOH
pH=7.53-log10(nrem/nOH)
//results
printf("Final pH= %.1f",pH)
