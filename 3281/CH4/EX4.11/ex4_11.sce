//Page Number: 200
//Example 4.11
clc;
//Given
f=9.375D+9;//hz
sig=5.8D+7;
eet=377;
c=3D+8; //m/s
w=2*%pi*f;
r=1.5;
u=4D-7*%pi;

//Radius
a=c/(f*2.62);//m
disp('cm',a*100,'Radius of resonantor');

//O
rs=sqrt((w*u)/(2*sig));//ohm
x=1.202*eet;
y=rs*(1+(1/r));
q=x/y;
disp(q,'Q of the resonator:');

//Answer for Q is calculated as 10875 in book but it is 10763.303
