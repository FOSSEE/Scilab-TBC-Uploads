//Page Number: 377
//Example 7.13
clc;
//Given
N=15;
t=0.3D-6; //s
DC=0.0011; //Duty cycle

//(i) Agile excursion
A=N/t;
disp('MHz',A/10^6,'Agile excursion:');

//(ii) Pulse to pulse frequency seperation
fp=1/t;
disp('Mhz',fp/10^6,'Pulse to pulse frequency seperation:');

//(iii) Signal frequency
f=DC/t;
disp('Khz',f/1000,'Signal frequency:');

//(iv) Agile rate
Tp=N/f;
R=1/(2*Tp);
disp('ps',R,'Agile Rate:');

