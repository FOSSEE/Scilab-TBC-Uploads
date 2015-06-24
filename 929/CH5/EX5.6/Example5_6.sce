//Example 5.6 

clear;

clc;

atyp=10^5;//typical value of a

amin=10^4;//minimum value of a

TCVosavg=3*10^(-6);

CMRRdBtyp=100;//typical value of CMRR in dB

CMRRrectyp=10^(-CMRRdBtyp/20);

PSRRdBtyp=100;//typical value of PSRR in dB

PSRRrectyp=10^(-PSRRdBtyp/20);

CMRRdBmin=80;//minimum value of CMRR in dB

CMRRrecmax=10^(-CMRRdBmin/20);

PSRRdBmin=80;//minimum value of PSRR in dB

PSRRrecmax=10^(-PSRRdBmin/20);

Tmin=0;

Tmax=70;

Vs=15;

vpmin=-1;

vpmax=1;

vomin=-5;

vomax=5;

Troom=25;

delVos1=TCVosavg*(Tmax-Troom);

delVos2typ=vpmax*CMRRrectyp;

delVos2max=vpmax*CMRRrecmax;

delVos3typ=2*(0.05*Vs)*PSRRrectyp;

delVos3max=2*(0.05*Vs)*PSRRrecmax;

delVos4typ=vomax/atyp;

delVos4max=vomax/amin;

delVoswor=delVos1+delVos2max+delVos3max+delVos4max;

deVospro=((delVos1^2)+(delVos2typ^2)+(delVos3typ^2)+(delVos4typ^2))^(1/2);

printf("Worst Change in Vos=(+-)%.2f uV",delVoswor*10^6);

printf("\nThe most probable change in Vos=(+-)%.f uV",deVospro*10^6);