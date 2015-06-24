//Page Number: 4.20
//Example 4.22
clc;
//Given
B=0.2; 
f1=200D+3; //Hz
fml=50; //Hz
fmh=15D+3; //Hz
delf=75D+3; //hz
fc=108D+6; //Hz

delf1=B*fml;
n1n2=delf/delf1;

//Let n2=150
n2=150;
flo=((delf*f1)-fc)/n2;
disp('Hz',flo,'fLO');

n1=n1n2/n2;
disp(n1, "n1 with n2=150:")
