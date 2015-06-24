//Page Number: 194
//Example 4.3
clc;
//Given
c=3D+8; //m/s
a=2.286;//cm
a1=a/100;//m
b=1.024;//cm
b1=b/100;//m
f=10D+9;//hz
sig=6D+7;
u=4D-7*%pi;
w=2*%pi*f;
eet=377;

//Shortest cavity length
lamc=2*a1;//m
fc=c/lamc;//hz
lam=c/f;//m
lamg=lam/sqrt(1-(fc/f)^2);//m
sc=lamg/2;//m
disp('cm',sc*100,'Shortest cavity length:');

//Qw of the resonator operating in TE101 mode
rs=sqrt((w*u)/(2*sig));//ohm
lamr=c/f;
x=(((a1*b1)/(sc^2))+((sc^2+a1^2)/(2*sc*a1))+(b1*sc/a1^2));
qw=(2*%pi*eet*a1*b1*sc)/(rs*(lamr^3)*x);
disp(qw,'Qw of the resonator operating in TE101 mode');
