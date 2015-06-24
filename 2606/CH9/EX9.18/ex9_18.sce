//Page Number: 9.24
//Example 9.18
clc;
//(b)Modulation index b
//Given
SNdB=30; //dB
SNRO=10^(SNdB/10);
//As SNRO=30*b^2*(b+1)
//Therefore
p2=poly(0,'x');
p3 =30*(p2^3)+30*(p2^2)-1000;
r=roots(p3);
t=r(3,1);
disp(t,'Modulation index:');

