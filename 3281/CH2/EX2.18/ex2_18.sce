//Page Number: 104
//Example 2.18
clc;
//Given
f=5D+9; //Hz
c=3D+8; //m/s
a=7.5; //cm
a1=a/100; //m
b=3.5; //cm
b1=b/100; //m
lam=c/f;
lamm=lam*100; //m

disp('TE10 mode');
lamc10=2*a;
bet10=(2*%pi*sqrt(((lamc10/lamm)^2)-1))/lamc10;
disp('rad/cm',bet10,'Propogation constant:');
vp10=(2*%pi*f)/bet10;
disp('m/s',vp10/100,'Phase velocity:');

disp('TE01 mode');
lamc01=2*b;
bet01=(2*%pi*sqrt(((lamc01/lamm)^2)-1))/lamc01;
disp('rad/cm',bet01,'Propogation constant:');
vp01=(2*%pi*f)/bet01;
disp('m/s',vp01/100,'Phase velocity:');

disp('TE11 mode');
lamc11=(2*a*b)/sqrt((a*a)+(b*b));
bet11=(2*%pi*sqrt(((lamc11/lamm)^2)-1))/lamc11;
disp('rad/cm',bet11,'Propogation constant:');
vp11=(2*%pi*f)/bet11;
disp('m/s',vp11/100,'Phase velocity:');

disp('TE02 mode');
lamc02=b;
bet02=(2*%pi*sqrt(((lamc02/lamm)^2)-1))/lamc02;
disp('rad/cm',bet02,'Propogation constant:');
disp('As beta is imaginary, mode gets attenuated');
alp=(2*%pi*sqrt(1-((lamc02/lamm)^2)))/lamc02;
disp('Np/m',alp,'Propogation constant alpha:');


