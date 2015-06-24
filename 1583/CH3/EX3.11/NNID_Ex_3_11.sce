clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.11 page no 88
//given
ensqr=8*10^-16//noise voltage
insqr=9*10^-25//rms noise current
Rs=sqrt(ensqr/insqr)//sourse resistance
k=1.38*10^-23//Boltzmmans constant
T=290//tempreture
F=(ensqr+insqr*Rs^2+4*k*T*Rs)/(4*k*T*Rs)//amplifier noise factor
NF=10*log10(F)//noise figure
mprintf('the minimum minimum noise figure is %f dB',round(NF*10)/10)
