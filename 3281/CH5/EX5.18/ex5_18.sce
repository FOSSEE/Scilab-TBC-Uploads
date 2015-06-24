//Page Number:
//Example 5.18
clc;
//Given
f=9D+9;//hz
v0=300;//V
vr=125;//V
bet=0.9;
c=3D+8; //m/s
w=2*%pi*f;
br=2.18;//mm
e0=8.854D-12;
ebym=1.7D+11;

//From sin(theta)/theta table, thetag is found out to be
thetag=0.25*%pi; 
d=(2*thetag*0.593D+6*sqrt(v0))/w;
disp('mm',d*1000,'Distance:');

//Axial cavity length
l=c/(10*f);//m
disp('mm',l*1000,'Axial cavity length:');

//Ratio of outer to inner conductor
a=1.5*br;
a1=a/1000;
x=d/(w*e0*a1*a1*60*tan((w*l)/c));
bbya=exp(x);
disp(bbya,'Ratio of outer to inner conductor:');

//radii of outer and inner conductor
disp('mm',a,'Radius of outer conductor:');

b=1.52*a;//mm
disp('mm',b,'Radius of inner conductor:');

//Repeller spacing
lopt=sqrt(ebym*(19/4)^2*(v0+vr)^2/(8*f^2*v0));//m
disp('mm',lopt*1000,'Repeller spacing:');

//Answer for radii of outer and inner conductor have wrong calculations in book
//Also ratio of outer to inner conductor is also calculated wrong
