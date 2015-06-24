clc
//Initialization of variables
P1=0.01
P2=0.1
P3=0.01
dF0=-54640 //cal
T=298.15 //K
R=1.987 //cal/deg
//calculations
Qp=P1/(P2*P3^0.5)
dF=dF0+R*T*log(Qp)
//results
printf("change in free energy = %d cal",dF)
