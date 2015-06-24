clc
//Chapter5
//Ex_9
//Given
e=1.6*10^-19 // in coulombs
Nd=10^17 //in cm^-3
Na=9*10^16 //in cm^-3
//part(a)
ue1=800 // at 300 kelvin ue in cm2/V/s
sigma1=e*Nd*ue1
ue2=420 // at 400 kelvin ue in cm2/V/s
sigma2=e*Nd*ue2
disp(sigma2,sigma1,"when Si sample is doped with 10^17 arsenic atoms/cm3, the conductivity of the sample at 300K and 400K in ohm^-1*cm^-1 is")
//part(b)
ue1=600 // at 300 kelvin ue in cm2/V/s
sigma1=e*(Nd-Na)*ue1
ue2=400 // at 400 kelvin ue in cm2/V/s
sigma2=e*(Nd-Na)*ue2
disp(sigma2,sigma1,"when n-type Si is further doped with 9*10^16 boron atoms /cm3, the conductivity of the sample at 300K and 400K in ohm^-1*cm^-1 is")
