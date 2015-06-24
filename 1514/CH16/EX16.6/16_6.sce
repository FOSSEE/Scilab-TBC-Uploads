//chapter 16
//example 16.6
//page 485
clear;
clc ;
//given
Zzr=7;//dynamic impedance of 1N753
Vs=15;//dc supply 
R1=150;
Vo=6.2;
Ilmax=55;
deltaVs=10/100*Vs;
deltaVo=1000*deltaVs*Zzr/(R1+Zzr);
//line regulation
lineR=(deltaVo*100/Vo)/1000;
printf("\nline regulation=%d%%  ",lineR)
deltaIl=Ilmax;
deltaVo=deltaIl*(Zzr*R1/(Zzr+R1));
//load regulation
loadR=(deltaVo*100/Vo)/1000;
printf("\nload regulation=%.1f%% ",loadR)
//ripple rejection
RR = 20*log10((R1+Zzr)/Zzr);
printf("\nripple rejection= %d db",RR)

