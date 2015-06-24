//Page Number: 4.19
//Example 4.19
clc;
//Given
fm1=50; //Hz
fm2=15D+3; //Hz

delf=75D+3; //Hz

//As B=delf/fm
Bmin=delf/fm2;
Bmax=delf/fm1;

//Let B1=0.5
B1=0.5;
n=(Bmax/B1);
disp(n,'Multiplication factor');

delf1=(delf/n);
disp('Hz',delf1,'Max allowed frequency deviation');
