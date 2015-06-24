//Page Number: 92
//Example 2.2
clc;
//Given,
c=3D+8; //m/s
a=2.5; //cm
b=5; //cm
lam=4.5; //cm

lamc=2*b;

//Guide wavelength
lamg=lam/(sqrt(1-((lam/lamc)^2)));
disp('cm',lamg,'Guide wavelength:');

//Phase constant
bet=(2*%pi)/lamg;
bet=bet*100; //rad/m
disp('rad/m',bet,'Phase constant:');

//Phase velocity
w=(2*%pi*c)/lam;
vp=w/bet;
disp('m/s',vp,'Phase velocity:');
