//Page Number: 193
//Example 4.2
clc;
//Given
a=0.38;//cm
a1=a/100;//m
b=0.76;//cm
b1=b/100;//m
f=50D+9;
c=3D+8;

//Length for TE102
m=1;
n=0;
p=2;
l=1/sqrt((f/c)^2-(1/(4*b1^2)));//m
disp('cm',l*100,'Length c:');
