//Chapter-12, Example 12.9, Page 517
//=============================================================================
clc
clear

//INPUT DATA
Q=6000;//Taking design heat load value in W from Example no. 12.8 on page no.516
U=850;//Taking overall heat transfer coefficient value in W/m^2.K from Example no. 12.8 on page no.516
Tlm=10.92//Taking LMTD for a counterflow arrangement in degree C from Example no. 12.8 on page no.517
R=2.875;//Taking R value from Example no. 12.8 on page no.517
P=0.209;//Taking P value from Example no. 12.8 on page no.517
F=0.985;//Taking correction factor from Fig. 12.10 on page no.514

//CALCULATIONS
A=(Q/(U*F*Tlm));//Area of shell-and-tube heat exchanger in m^2

//OUTPUT
mprintf('Area of shell aand tube heat exchanger is %3.3f m^2',A)

//=================================END OF PROGRAM==============================
