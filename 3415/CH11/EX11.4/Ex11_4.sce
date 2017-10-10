//fiber optic communications by joseph c. palais
//example 11.4
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear 
//given
lambda=0.85e-6//wave length in um
Row=0.5//respomsivity in A/W
ID=2*10^-9//Detector dark current in A
RL=100//load resistance in ohm
deltaf=1*10^6//receiver's bandwidth in Hz
T=300//temperature in Kelvin
e=1.6*10^-19//charge of electron in columbs
k=1.38e-23//boltzman constant

//to find

for i=1:6
    RL1(i)=10^(i*2);//range of load resistance in ohm
    logRL(i)=log10(RL1(i))//log scale representation of load resistance
    iNT(i)=sqrt(4*k*T*deltaf/RL1(i))//rms thermal noise current in A
iNSD(i)=sqrt(2*e*ID*deltaf)//rms shot noise current in A
NEP(i)=sqrt(iNSD(i)^2+iNT(i)^2)/(RL*sqrt(deltaf))//Noise equivalent power (NEP) in W/Hz^1/2

logNEP(i)=log10(NEP(i))
end
iNT1=sqrt(4*k*T*deltaf/RL)//rms thermal noise current in A
iNSD1=sqrt(2*e*ID*deltaf)//rms shot noise current in A
NEP1=sqrt(iNSD1^2+iNT1^2)/(RL*sqrt(deltaf))//Noise equivalent power (NEP) in W/Hz^1/2
Pmin=NEP1*sqrt(deltaf)//minimum detectable power
mprintf("Minimum detectable power =%fnW",Pmin*10^9)//multiplication by 10^9 to convert unit from W to nW
plot2d('ll', RL1, NEP)

xtitle( "Noise equivalent power for a PIN diode having 2nA of Dark current and a 0.5W/A responsivity at 300K", "Load Resistance (Ohms)", "NEP  (W/Hz^1/2)") ;