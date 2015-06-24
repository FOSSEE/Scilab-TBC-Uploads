//Page Number: 5.41
//Example 5.34
clc;
//Given,
fs=8000; //Hz
m=24;
n=8;
//(a) Duration of each bit
t1=1/fs;
t2=(m*n)+1; // Extra bit for synchronization
Tb=t1/t2;
disp('seconds',Tb,'Duration of each bit');

//(b) Transmission Rate
Rb=1/Tb;
disp('b/s',Rb,'Transmission Rate');

//(c)Minimum transmission bandwidth
fT1=1/(2*Tb);
disp('Hz',fT1,'Minimum transmission bandwidth');

