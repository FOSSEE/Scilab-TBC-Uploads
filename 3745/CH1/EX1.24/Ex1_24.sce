// Ex 24 Page 366

clc;clear;close;
// Given
b=3;//cm
a=4.5;//cm
f=9*10**9;//Hz
v=3*10**10;//cm/s
lamda=v/f;//cm

printf("\n For TE10 mode:")
m=1;// for TE10 mode
lamda_c = 2*a/m;//cm
rho=sqrt(1-(lamda/lamda_c)**2)
lamda_g=lamda/rho;//cm
vg=rho*v;//cm/s
vp=v/rho;//cm/s
ZTE=120*%pi/rho;//ohm

printf("\n cutoff wavelength = %.f cm",lamda_c)
printf("\n guide wavelength = %.2f cm",lamda_g)
printf("\n Group velocity = %.1e m/s",vg/100)
printf("\n Phase velocity = %.1e m/s",vp/100)
printf("\n Characteristic wave impedence = %.f ohm",ZTE)

printf("\n\n For TM11 mode:")
m=1;n=1// for TE10 mode
lamda_c = 2/sqrt((m/a)**2+(n/b)**2);//cm
rho=sqrt(1-(lamda/lamda_c)**2)
lamda_g=lamda/rho;//cm
vg=rho*v;//cm/s
vp=v/rho;//cm/s
ZTM=120*%pi*rho;//ohm
printf("\n cutoff wavelength = %.f cm",lamda_c)
printf("\n guide wavelength = %.2f cm",lamda_g)
printf("\n Group velocity = %.1e m/s",vg/100)
printf("\n Phase velocity = %.1e m/s",vp/100)
printf("\n Characteristic wave impedence = %.f ohm",ZTM)
