//Page Number: 4.21
//Example 4.23
clc;
//Given,

delfd1=50; //Hz
f1=120; //Hz

delfd2=20000; //Hz
f2=240; //Hz
//(a)PM
delf1=(f2/f1)*delfd1;
n1=delfd2/delf1;
disp(n1,'Frequency multiplication factor in PM');

//(b)FM
n2=delfd2/delfd1;
disp(n2,'Frequency multiplication factor in FM');

