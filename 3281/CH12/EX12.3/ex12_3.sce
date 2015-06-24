//Page Number: 650
//Example 12.3
clc;
//Given
f=10D+9; //Hz
c=3D+10; //cm/s
a=4; //cm
s=0.1; //cm
lmb=c/f; //cm
lmbg=lmb/(sqrt(1-((lmb/(2*a))^2)));
vswr=lmbg/(%pi*s);
disp(vswr,'VSWR:');

//Answer in book for lmbg is given as 3.49 but it should be 3.23 and hence the answer will be 10.3
