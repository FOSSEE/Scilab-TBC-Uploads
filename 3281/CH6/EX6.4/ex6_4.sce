//Page Number: 332
//Example 6.4
clc;
//Given
a=(4.4*%pi)/180; //radians
c=3D+8 //m/s
f=8D+9; //Hz
al=2; //Np/m

//Phase velocity
vp=c*sin(a);

//Propogation constant
be=(2*%pi*f)/vp;

gam=al+(%i*be);
disp(gam,'Propogation constant:');
