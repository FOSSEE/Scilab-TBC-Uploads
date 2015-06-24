//fiber optic communications by joseph c. palais
//example 11.3
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear all
//given
lambda=0.85e-6//wave length in um
Pi=10*10^-3//led Power in W
L=20//fiber cable loss in dB
Row=0.5//respomsivity in A/W
ID=2*10^-9//Detector dark current in A
RL=50//load resistance in ohm
BW=10*10^6//receiver's bandwidth in Hz
Ta=300//temperature in Kelvin
SCL=14//source coupling loss in dB
CL=10//connector loss in dB
e=1.6*10^-19//charge of electron in columbs
k=1.38e-23//boltzman constant
M=160//multiplication factor
//to find
TL=SCL+CL+L//total Loss in dB
Tn=10^(-TL/10)//transmission efficiency
PR=Pi*Tn//received power in W
is=Row*PR//photo current in A
PES=is^2*RL*M^2//Electrical signal power in W
PNS=2*e*is*BW*RL*M^2//shot noise power in W
PNT=4*k*Ta*BW//Thermal noise power in W
SNR=PES/(PNT+PNS)//signal to noise ratio 
SNRdB=10*log10(SNR)//signal to noise ratio in dB
SNRQL=is/(2*e*BW)//quantum limited SNR
SNRQLdB=10*log10(SNRQL)//quantum limited SNR in dB
//mprintf("Received power =%fx10^-8W",PR*10^8)//multiplication by 10^8 to convert the unit from W to x10^-8W
//mprintf("\nPhoto current=%fnA",is*10^9)//multiplication by 10^9 to convert the unit from A to nA
mprintf("\nElectrical signal power=%f*10^-8W",PES*10^8)//multiplication by 10^12 to convert the unit from W to x10^-8W
mprintf("\nShot noise power=%f*10^-13W",PNS*10^13)//multiplication by 10^13 to convert the unit from W to x10^-13W
mprintf("\nThermal noise power=%f*10^-13W",PNT*10^13)//multiplication by 10^13 to convert the unit from W to x10^-13W
mprintf("\nSignal to noise ratio=%fdB",SNRdB)//The answers vary due to round off error
mprintf("\nSignal to noise ratio quantum limited=%fdB",SNRQLdB)// The answers vary due to round off error
