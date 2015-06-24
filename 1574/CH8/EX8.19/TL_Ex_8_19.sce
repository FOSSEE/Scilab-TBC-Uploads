clc
//Chapter8
//Example8.19, page no 350
//Given
Zo=100// Characteristic Impedance
P=100e-3//Load power
Zr=140//Load Resistance
f=100e3// Operating freq
//a
K=(Zr-Zo)/(Zo+Zr)//Vtg Reflection coeff

//b
S=(1+K)/(1-K)//VSWR

//c+d
Emax=sqrt(Zr*P)//Max line vltg
Imin=Emax/Zr//Min line current

Emin=Emax/S// Min line vltg
Imax=S*Imin//Max line current

//e
R=14000/40

Zr=(Zo^2)/R//
mprintf('\nThe voltage reflection coeff is %f\nThe VSWR is %f\n\n\nThe Max and min voltage and crresponding crrent is\n Emax= %fV Imin= %fmA\n Emin= %fV Imax= %fmA\n\n The Termination resistance should be %f ohm',K,S,Emax,Imin*1e3,Emin,Imax*1e3,Zr)









