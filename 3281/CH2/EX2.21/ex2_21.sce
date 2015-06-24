//Page Number: 106
//Example 2.21
clc;
//Given
c=3D+8; //m/s
f=15D+9; //hz
a=1.07; //cm
a1=a/100; //m
b=0.43; //cm
b1=b/100; //m
er=2.08;
tandel=0.0004;
lam=c/f;


//(i) Cut off frequency
m1=1;
n1=0;
fc10=(c/(2*%pi*sqrt(er))*sqrt((m1*%pi/a1)^2+(n1*%pi/b1)^2));
disp('GHz',fc10/10^9,'Cut off frequency for mode TE10:');

m2=2;
n2=0;
fc20=(c/(2*%pi*sqrt(er))*sqrt((m2*%pi/a1)^2+(n2*%pi/b1)^2));
disp('Ghz',fc20/10^9,'Cut off frequency at mode TE20:');

m3=0;
n3=1;
fc01=(c/(2*%pi*sqrt(er))*sqrt((m3*%pi/a1)^2+(n3*%pi/b1)^2));
disp('Ghz',fc01/10^9,'Cut off frequency at mode TE01:');

//Dielectric attenuation constant
ad=(%pi*tandel)/(lam*sqrt(1-(fc10/f)^2));
adb=-20*log10(exp(-ad));
disp('dB/m',adb,'Attenuation constant:');
