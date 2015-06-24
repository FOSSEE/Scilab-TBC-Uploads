
//Exa:5.4
clc;
clear;
close;
//Given:
Fd=40;//in kHz
Fc=101.6;//in MHz
Fm=8;//in KHz
Fs=2*Fd;
mf=Fd/Fm;
FH=(Fc*1000+Fd)/1000;
FL=(Fc*1000-Fd)/1000;
printf("\n\t carrer swing = %f",Fs);
printf("\n modulation index = %f",mf);
printf("\n\t Highest frequency = %f MHz",FH);
printf("\n\t lowest frequency = %f MHz",FL);