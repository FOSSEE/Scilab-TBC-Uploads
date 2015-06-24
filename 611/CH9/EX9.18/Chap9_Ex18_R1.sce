// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 18,Page 341
//Title: Fugacity and fugacity coefficient using the pseudocritical constants method
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tcm=497.3;//pseudocritical temperature of mixture in K taken from Example(9.10)
Pcm=31.47;//pseudocritical pressure of mixture in bar taken from Example(9.10)
Trm=1.21;//pseudoreduced temperature of the mixture (no unit) taken from Example(9.10)
Prm=0.51;//pseudoreduced pressure of the mixture (no unit) taken from Example(9.10)
w=[0.199;0.398];//acentric factor of n-butane and n-octane (no unit)

//CALCULATION
wm=(w(1,:)+w(2,:))/2;//calculation of the acentric factor for the mixture (no unit)
log_phi0=-0.042;//value of log_phi0 taken from Figure(9.2) (no unit)
log_phi1=0.01;//value of log_phi1 taken from Figure(9.4) (no unit)
phi=10^(log_phi0+(wm*log_phi1));//calculation of the fugacity coefficient using Eq.(9.54) (no unit)
f=P*phi;//calculation of the fugacity using Eq.(9.37) in bar

//OUTPUT
mprintf("\n The fugacity coefficient of an equimolar mixture of n-butane and n-octane using the pseudocritical constants method = %0.3f \n",phi);
mprintf("\n The fugacity of an equimolar mixture of n-butane and n-octane using the pseudocritical constants method = %f bar\n",f);

//===============================================END OF PROGRAM===================================================
