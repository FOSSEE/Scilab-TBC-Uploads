//Page Number: 249
//Example 4.23
clc;
//Given
f=10D+9; //Hz
u=4D-7*%pi;
c=3D+8; //m/s
a=2.29; //cm
a1=a/100;
b=1.02; //cm
b1=b/100;

//E/H
w=2*%pi*f;
EbyH=(w*u)/sqrt(((w/c)^2)+((%pi/a1)^2));
lam=c/f;
lamc=2*a1;
d=(1/4)*(lam/sqrt(1-((lam/lamc)^2)));
disp('cm',d*100,'Position:');

//Answer for positon is calculated wrong in book
