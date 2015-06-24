//Page Number: 42
//Example 1.17
clc;
//Given
c=3D+8; //m/s
f=10D+9;//hz
er=6;
tandel=2D-4;

vp=c/er;//m/sec
disp('m/sec',vp,'Phase velocity:');
al=(%pi*f*tandel)/vp;//Np/m
disp('Np/m',al,'Attenuation constant:');

//Answer for velocity is calculated wrong in book, hence answers dont match for both
