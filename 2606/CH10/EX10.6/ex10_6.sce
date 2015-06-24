//Page Number: 10.23
//Example 10.6
clc;
//Given
p=0.1; //dB
p1=10^(-p/10);
p2=sqrt(p1);
t=acosd(p2);
a=round(t);
disp('degrees',a,'System cannot tolerate more than:');
