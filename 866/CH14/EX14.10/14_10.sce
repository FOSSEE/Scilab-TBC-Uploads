clc
//initialisation of variables
BeamL= 250 //mm
BeamH= 500 //mm
spanlength= 4 //m
Failurestress= 1.5 //N/mm^2
//CALCULATIONS
W1= (Failurestress*BeamL*BeamH^3)/(10^3*BeamL*12)
W2= (4*Failurestress*BeamL*BeamH)/3
if(W1>W2)
    printf ("W2= %.2e kN",W2)
else
    printf ("W2= %.2e kN",W1)
