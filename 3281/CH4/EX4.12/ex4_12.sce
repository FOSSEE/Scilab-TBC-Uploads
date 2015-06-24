//Page Number: 215
//Example 4.12
clc;
//Given
f=5D+9;//hz
sig=5.813D+7;
er=2.25;
tandel=4D-4;
c=3D+8; //m/s
h01=3.832;
u=4D-7*%pi;

//Length of resonator
lamr=c/(f*sqrt(er));
d=sqrt([{(((2*3.832)^2)+(%pi*%pi))*(lamr*lamr)}/(2*2*%pi*%pi)]);
disp('cm',d*100,'Length of resonator:');

//Q of resonator
n=(120*%pi)/sqrt(er);
Rs=sqrt((f*u)/sig);
a=d/2;
Qw1=n*[[(h01/a)^2+(%pi/d)^2]^(3/2)];
Qw2=2*Rs*[((h01*h01)/(a*a*a))+((2*%pi*%pi)/(d*d*d))];
Qw=Qw1/Qw2;
Qd=1/tandel;
Q=(Qw*Qd)/(Qw+Qd);
disp(Q,'Q of resonator:');

//Value of Qw is calculated wrong in the book, it should be 50057.91 instead of 53473.8
//Hence the value of Q also differs



