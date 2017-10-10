//Example 8.6.2
//Calculate the XPD 
clc
clear
elevationangle=30
f=12
attenuation=7
t1=20
t2=0
sigma=10
p=0.01
Cf=30*log10(f)
printf("Cf = %f \n",Cf)

Vf=12.8*f^0.19
printf("Vf = %f \n",Vf)

Ca=Vf*log10(attenuation)
printf("Ca = %f \n",Ca)

Ct1=(-10)*log10(1-0.484*(1+cosd(4*t1)))
Ct2=(-10)*log10(1-0.484*(1+cosd(4*t2)))
printf("Ct1 for tilt angle of 20 degrees = %f \n",Ct1)
printf("Ct2 for tilt angle of 0 degree = %f \n",Ct2)

Ctheta=-40*log10(cosd(elevationangle))
printf("Ctheta = %f \n",Ctheta)

Csigma=0.0052*sigma^2
printf("Csigma = %f \n",Csigma)

XPD1=Cf-Ca+Ct1+Ctheta+Csigma
XPD2=Cf-Ca+Ct2+Ctheta+Csigma
printf("XPD1 for tilt angle of 20 degrees = %f dB \n",XPD1)
printf("XPD2 for tilt angle of 0 degree = %f dB \n",XPD2)

Cice1=XPD1*(0.3+0.1*log10(p))/2
Cice2=XPD2*(0.3+0.1*log10(p))/2
printf("Cice1 for tilt angle of 20 degrees = %f \n",Cice1)
printf("Cice2 for tilt angle of 0 degree = %f \n",Cice2)

XPDp1=XPD1-Cice1
XPDp2=XPD2-Cice2
printf("XPDp1 for tilt angle of 20 degrees = %f dB \n",XPDp1)
printf("XPDp2 for tilt angle of 0 degree = %f dB \n",XPDp2)
