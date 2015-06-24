//Page Number: 109
//Example 2.26
clc;
//Given
c=3D+8; //m/s
a=2.286; //cm
f=5D+9; //Hz
er=2.25; 
tandel=1D-3;
w=2*%pi*f;
mu=4D-7;
sig=5.8D+7; //s/m

lamc=2*a;
lamm=c/f;//m
lam=lamm*100;//cm

ermax=(lam/a)^2;
disp(ermax,'Maximum value of dielectric constant:');
ermin=(lam/(2*a))^2;
disp(ermin,'Minimum value of dielectric constant:');

//Guide wavelength
lam1=lam/sqrt(er);//cm
lamg=lam1/sqrt(1-(lam1/lamc)^2);
disp('cm',lamg,'Guide wavelength:');

lamm1=lam1/100;
ad=(%pi/lamm1)*(tandel/sqrt(1-(lam1/lamc)^2));
disp('Np/m',ad,'ad:');
bet=2*%pi/lamg;
disp('rad/cm',bet,'Beta:');
vp=w/(bet*100);
disp('m/s',vp,'Phase velocity:');


