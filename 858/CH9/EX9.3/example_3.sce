clc
clear
printf("example 9.3 page number 385\n\n")

MH = 10   //in kg/s
MC = 12.5  //in kg/s
CPH = 4.2   //in kJ/kg
CPC = 4.2   //in kJ/kg
THI = 353   //in K
THO = 333   //in K
TCI = 300   //in K
U = 1.8    //in kW/sq m K

Q = MH*CPH*(THI-THO);
printf("heat load = %f J",Q)

TCO = Q/(MC*CPC)+TCI;
printf("\n\ncold fluid outlet temperature = %f K",TCO)

//for co current flow

DT1 = THI-TCO;
DT2 = THO-TCO;

LMTD = (DT1-DT2)/log(DT1/DT2);

A = Q/(U*LMTD);
printf("\n\nfor co current flow, area = %f sq m",A);

//for counter current flow

DT1 = THI-TCO;
DT2 = THO-TCI;

LMTD = (DT1-DT2)/log(DT1/DT2);

A = Q/(U*LMTD);
printf("\n\nfor counter current flow, area = %f sq m",A);
