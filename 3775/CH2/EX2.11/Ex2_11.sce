//Ex 2.11 page 73

clc;
clear;
close;

m=3*10**3;// gradient (VG/IG)
VS=10;// V
PG=0.012;// W
// IG = VG/m & PG=VG*IG
VG=sqrt(PG*m)
IG=VG/m ; // A
RS=(VS-VG)/IG/1000;// kohm
printf('gate source resistance = %.1f kohm',RS)

