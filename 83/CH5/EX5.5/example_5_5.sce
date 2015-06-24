//Chapter 5
//Example 5.5
//page 147
//to find maximum permissible length and and frequency
clc;clear;
R=0.125*400;
X=0.4*400;
Y=2.8*(10^-6)*400*%i;
Z=R+X*%i;

//(i) At no-load
A=1+(Y*Z/2);
C=Y*(1+Y*Z/6);
VR_line=220000/abs(A);
Is=abs(C)*VR_line/sqrt(3);
printf('\n\n |VR|line = %d kV',VR_line/1000);
printf('\n |Is| = %d A',Is);

//(ii) to find maximum permissible length
//By solving the equations shown in the book,we get
l=sqrt((1-0.936)/(0.56*10^(-6)));
printf('\n\n Maximum permissible length of the line = %d km',l);

//(iii) to find maximum permissible frequency for the case(i)
//By solving the equations shown in the book,we get
f=sqrt(((1-0.88)*50*50)/(0.5*1.12*10^-3*160));
printf('\n\n Maximum permissible frequency = %0.1f Hz\n\n',f);


