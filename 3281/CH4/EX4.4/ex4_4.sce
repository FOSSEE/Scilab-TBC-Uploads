//Page Number: 195
//Example 4.4
clc;
//Given
c=3D+8; //m/s
a=4.8;//cm
a1=a/100;//m
b=2.2;//cm
b1=b/100;//m
f=5D+9;//hz
er=2.25;
tandel=4D-4;
sig=5.813D+7;
oneby=3D+8;
u=4D-7*%pi;
w=2*%pi*f;
eet=377;

//Length at p=1
m=1;
n=0;
p=1;
z=(f*2*sqrt(er))/c;
cp1=p/sqrt((z^2)-((m/a1)^2)-((n/b1)^2));
disp('cm',cp1*100,'Length of resonator at p=1:');

//At p=2
cp2=cp1*2;
disp('cm',cp2*100,'Length of resonator at p=2:');

//Qw
rs=sqrt((w*u)/(2*sig));//ohm
lamr=c/(f*sqrt(er));
x=(((a1*b1)/(cp1^2))+((cp1^2+a1^2)/(2*cp1*a1))+(b1*cp1/a1^2));
qw=(2*%pi*(eet/sqrt(er))*a1*b1*cp1)/(rs*(lamr^3)*x);
qd=1/tandel;
q=(qw*qd)/(qw+qd);
disp(q,'Q for TE101 mode:');

