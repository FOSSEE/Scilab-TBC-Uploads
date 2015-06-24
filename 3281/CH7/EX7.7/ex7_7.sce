//Page Number: 374
//Example 7.7
clc;
//Given
N=20;
t=0.2D-6; //s
DC=0.001; //Duty cycle

//(i) Agile excursion
A=N/t;
disp('MHz',A/10^6,'Agile excursion:');

//(ii) Signal frequency
f=DC/t;
disp('Khz',f/1000,'Signal frequency:');

//(iii) Agile rate
R=f/(2*N);
disp('Hz',R,'Agile Rate:');

