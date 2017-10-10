
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 3.1
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Pin=100;//average optical power in microwatts
Pout=2.5;//average output power in microwatts
L=10;//length of fiber in Km
L1=11//Length of fiber in Km
Ls=0.8//attenuation per splice in dB
ns=3//no of splices
u=1/L;
v=log10(Pin/Pout);
alphadB=u*10*v;//total attenuation per Km
TA=alphadB*L;
mprintf("\n Total Attenuation=%.2f dB",TA);
TA11=alphadB*L1;//total attenuation for 11 Km
mprintf("\n Total Attenuation for 11 Km=%.2f dB",TA11);
OA=TA11+ns*Ls;//overall attenuation in the link
mprintf("\n The overall attenuation in the link=%.2f dB",OA);
PinbyPout=10^(OA/10);//the value of Pin/Pout for 11Km line with splices
mprintf("\n The value of Pin/Pout for 11Km line with splices=%.2f",PinbyPout);
//the answer vary due to rounding
