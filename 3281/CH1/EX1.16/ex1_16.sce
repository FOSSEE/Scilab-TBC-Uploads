//Page Number: 42
//Example 1.16
clc;
//From given wave equation we can see
w=1D+9;//rad/sec
bet=30;//rad/m
c=3D+8; //m/s
u0=1; //let
e0=1/(9D+16);

vp=w/bet;//m/sec
disp('m/s',vp,'Phase velocity:');

e=1/(vp^2*u0);
er=e/(e0*u0);
disp(er,'Dielectric constant:');
