// Chapter 13_Optical Devices
//Caption_Electron hole pair generation rate
//Ex_2//page 600
T=300
Ivx=0.05    //photon intensity
lambda=0.75  //wavelength
alpha=0.7*10^4       //absorption coefficient
h=1.24
v=1/lambda // v is the frequency
E=h*v   //energy in eV,
g=alpha*Ivx/(1.6*10^-19*h*v)    //generation rate of electron hole pair
tau=10^-7     //lifetime of minority carrier
deln=g*tau    //excess carrier concentration
printf('The generation rate of electron hole pair is %1.2f cm^-3 s^-1',g)