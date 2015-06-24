//2.4
clc;
Vm=100;
R=5;
Idc=2*Vm/(%pi*R);
printf("\nIdc = %.3f A",Idc)
Vdc=Idc*R;
printf("\nVdc = %.3f V",Vdc)
Irms=0.707*Vm/R;
printf("\nIrms = %.3f A",Irms)
Vrms=Irms*R;
printf("\nVrms = %.3f V",Vrms)
Pdc=Idc^2*R;
printf("\nPdc = %.3f W",Pdc)
Pac=Irms^2*R;
printf("\nPac = %.3f W",Pac)
FF=Vrms/Vdc;
printf("\nFF = %.3f ",FF)
RF=(FF^2-1)^0.5;
printf("\nRF = %.3f ",RF)
TUF=0.5732;
printf("\nTUF = %.3f ",TUF)
PIV=2*Vm;
printf("\nPIV = %.0f V",PIV)
CF=0.707;
printf("\nCF = %.3f ",CF)