//Page Number: 198
//Example 4.8
clc;
//Given
a=5;//cm
a1=a/100;//m
b=4;//cm
b1=b/100;//m
c=10;//cm
c1=c/100;//m
sig=5.8D+7;
u0=4D-7*%pi;
er=3;
eet=377;

ur=1;
spl=3D+8;
tandel=2.5D-4;

//TE101 mode
m=1;
n=0;
p=1;
fr=(spl/(2*sqrt(er*ur)))*sqrt((m/a1)^2+(n/b1)^2+(p/c1)^2);//hz
disp('Ghz',fr/10^9,'Resonant frequency:');

w=2*%pi*fr;
rs=sqrt((w*u0)/(2*sig));//ohm
lamr=spl/(fr*sqrt(er));
x=(((a1*b1)/(c1^2))+((c1^2+a1^2)/(2*c1*a1))+((b1*c1)/a1^2));
qw=(2*%pi*(eet/sqrt(er))*a1*b1*c1)/(rs*(lamr^3)*x);
disp(qw,'Q for TE101 mode:');

qd=1/tandel;
q=(qw*qd)/(qw+qd);
disp(q,'Q for lossy dielectric:');

//Value of qw is calculated wrong in book as lamr comes to be 0.08 not 0.89 m

