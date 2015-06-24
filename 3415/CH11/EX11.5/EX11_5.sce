//fiber optic communications by joseph c. palais
//example 11.5
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
 clear all
//given
RL=100//load in ohm
T=300//temperature in kelvin
lambda=0.82*10^-6//wavelength in um
e=1.6e-19//charge of electron in colums
k=1.38e-23//boltzman constant
h=6.63e-34//plancks constant
deltaf=1e6//link bandwidth in Hz
Error_rate=10^-4//desired error rate
eta=1//quantum efficiency
c=3*10^8//speed of light in m/s
snr=17.5//Signal to noise ratio from plot correspnding to error rate of 10^-4 in dB
SNR=10^(snr/10)//signal to noise ratio in normal scale
tau=10^-6//bit interval in Sec
//to find
f=c/lambda//optic frequency in Hz
P=(h*f/(eta*e) )*sqrt((4*k*T*deltaf)/RL)*sqrt(SNR)//Optic power incident in Watts
mprintf("Optic power incident=%fnW",P*10^9)//multiplication by 10^9 is to convert the unit from W to nW
i=eta*e*P/(h*f)//current in Amperes
mprintf("\nCurrent=%fnA",i*10^9)//multiplication by 10^9 is to convert the unit from A to nA
np=P/(h*f)*tau// No. of photons per bit
mprintf("\nNo. of Photons per bit=%fx10^5 photons/bit",np/10^5)//multiplication by 10^5 is to convert the unit x10^5
