//Page Number: 93
//Example 2.5
clc;
//Given,
c=3D+8; //m/s
a=3.0; //cm
b=1.5; //cm
mur=1;
er=2.25;
x=mur*er;

//(i) Cutoff wavelength and frequencuy
disp('TE10 mode');
m1=1;
n1=0;
lamc10=2/sqrt((m1/a)^2+(n1/b)^2);
disp('cm',lamc10,'Cut-off wavelength:');
lamc10=lamc10/100;
f10=c/(lamc10*sqrt(x));
disp('Ghz',f10/1D+9,'Cutoff frequency:');

disp('TE20 mode');
m2=2;
n2=0;
lamc20=2/sqrt((m2/a)^2+(n2/b)^2);
disp('cm',lamc20,'Cut-off wavelength:');
lamc20=lamc20/100;
f20=c/(lamc20*sqrt(x));
disp('Ghz',f20/1D+9,'Cutoff frequency:');

disp('TE11 mode');
m3=1;
n3=1;
lamc11=2/sqrt((m3/a)^2+(n3/b)^2);
disp('cm',lamc11,'Cut-off wavelength:');
lamc11=lamc11/100;
f11=c/(lamc11*sqrt(x));
disp('Ghz',f11/1D+9,'Cutoff frequency:');

//(ii) lambg and Z0
f=4D+9; //Hz
lam=c/f;
lamg=lam/(sqrt(x-((lam/lamc10)^2)));
disp('cm',lamg*100,'Guide wavelength:');

fc=3.33D+9; //Hz
Z0=(120*%pi*(1/sqrt(x))*(b/a))/sqrt(1-((fc/f)^2));
disp('ohm',round(Z0),'Impedance:');
