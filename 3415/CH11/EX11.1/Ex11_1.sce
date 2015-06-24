//fiber optic communications by joseph c. palais
//example 11.1
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
//to find
TL=SCL+CL+L//total Loss in dB
Tn=10^(-TL/10)//transmission efficiency
PR=Pi*Tn//received power in W
is=Row*PR//photo current in A
PES=is^2*RL//Electrical signal power in W
PNS=2*e*is*BW*RL//shot noise power in W
PNT=4*k*Ta*BW//Thermal noise power in W
SNR=PES/PNT//signal to noise ratio 
SNRdB=10*log10(SNR)//signal to noise ratio in dB
SNRQL=is/(2*e*BW)//quantum limited SNR


mprintf("Received power =%fuW",PR*10^6)//multiplication by 10^6 to convert the unit from W to uW
mprintf("\nPhoto current=%fnA",is*10^9)//multiplication by 10^9 to convert the unit from A to nA
mprintf("\nElectrical signal power=%f*10^-12W",PES*10^12)//multiplication by 10^12 to convert the unit from W to x10^-12W
mprintf("\nShot noise power=%f*10^-17W",PNS*10^17)//multiplication by 10^17 to convert the unit from W to x10^-17W
mprintf("\nThermal noise power=%f*10^-13W",PNT*10^13)//multiplication by 10^13 to convert the unit from W to x10^-13W
mprintf("\nSignal to noise ratio=%fdB",SNRdB)
mprintf("\nQuantum limited SNR=%f",SNRQL)
//this is the exact answer, book has taken approximated values of parameters  and its Quantum limited SNR is 62500

