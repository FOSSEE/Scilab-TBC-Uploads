//Page Number: 4.20
//Example 4.20
clc;
//Given
f1=2D+5; //Hz
fLO=10.8D+6; //Hz
delf1=25; //Hz
n1=64;
n2=48;

delf=(delf1*n1*n2);
disp('Hz',delf,'Maximum frequency deviation');

f2=n1*f1;

f3a=f2+fLO;
f3b=f2-fLO;

//For f3a
fca=n2*f3a;
disp('Hz',fca,'Carrier frequency 1');

//For f3b
fcb=n2*f3b;
disp('Hz',fcb,'Carrier frequency 2');
