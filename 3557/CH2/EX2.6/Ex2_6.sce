//Example 2.6//
rNa=0.098//nm // Ionic radius of Sodium (From appendix 2)
rO=0.132//nm // // Ionic radius of Oxygen (From appendix 2)
a0=rNa+rO//nm
mprintf("a0 = %f nm",a0)
k0=9*10^9;//m/C // proportionality constant
q=1;//charge of single electron
z1=0.16*10^-18;//C //valence of the charged ions
z2=0.16*10^-18;//C //valence of the charged ions
q1=-2;//charge of single electron
a1=0.231*10^-9;//nm //separation distance between the centers of th ions
Fc=-(k0*q*z1*q1*z2)/(a1)^2
mprintf("\nFc = %e N",Fc)
Fr=-Fc
mprintf("\n Fr = %e N",Fr)
