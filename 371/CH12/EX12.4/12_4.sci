//Controllers and Their Optimisation//
//Example 12.4//
G=20;//smaller time constant in ms//
T1=350;//bigger time constant in ms//
Tn=4*G;//time constant of the controller in ms//
printf('\nTime constant of the controller in SO=Tn=%fms',Tn);
V=T1/(2*G);//gain of the control system//
printf('\nGain of the control system=V=%f',V);
Vg=1;//gain of the regulating current link//
Vr=V/Vg;//gain of the PI regulator//
printf('\nGain of the PI regulator=Vr=%f',Vr);
R1=11;//R1 in KiloOhms//
R2=R1*Vr;//R2 in kiloohms//
printf('\nR2=%fKiloohms',R2);
C2=Tn/R2;//C1 in microfarads//
printf('\nC2=%fmicrofarads',C2);