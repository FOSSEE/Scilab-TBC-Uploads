//Page Number: 112
//Example 2.28
clc;
//Given
c=3D+8; //m/s
er=9;
a=7; //cm
a1=a/100; //m
b=3.5; //cm
b1=b/100; //m
ur=1;
f1=2D+9; //Hz

//(i) Cut off frequency
lamc=2*a1;
fc=c/(lamc*sqrt(ur*er));
disp('Ghz',fc/10^9,'Cut off frequency:');

//(ii) Phase velocity
lam=c/f1;//m
lam1=lam*100;//cm
lamc1=lamc*100;//cm
lamg=lam1/(sqrt((ur*er)-((lamc1/lam1)^2))); //cm
lamg1=lamg/100;//m
vp=f1*lamg1;
disp('m/s',vp,'Phase velocity:');

///(iii)Guide wavelength
disp('cm',lamg,'Guide wavelength:');
