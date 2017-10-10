//Optical Fiber communication by A selvarajan
//example 9.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
L=50//link length in Km
Fiber_loss=0.2//fiber loss in dB/Km
Req_Gain=Fiber_loss*L//required Gain
Fn1db=5//Noise figure in dB
Fn2db=5//Noise figure in dB
Fn3db=5//Noise figure in dB
Fn1=10^(Fn1db/10);//Noise figure in normal scale for all amplifiers
Fn2=10^(Fn2db/10);//Noise figure in normal scale for all amplifiers
Fn3=10^(Fn3db/10);//Noise figure in normal scale for all amplifiers
G1=10^(Req_Gain/10)//gain in normal scale
G2=10^(Req_Gain/10)//gain in normal scale
Fneff=Fn1+(Fn2/G1)+(Fn3/(G1*G2));//Effective noise figure
SNRindb=30;//Signal to noise ratio at input in dB
SNRout=10^(SNRindb/10)/Fneff;//Signal to noise ratio at output in dB
SNRoutdb=10*log10(SNRout);
mprintf("Required Gain=%f",Req_Gain)
mprintf("\nEffective noise figure=%f",Fneff)
mprintf("\nSignal to noise ratio at output =%f dB",SNRoutdb)
