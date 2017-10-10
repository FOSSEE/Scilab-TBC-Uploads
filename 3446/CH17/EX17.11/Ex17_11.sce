// Exa 17.11
// To calculate average throughput and compare it with equal latency condition.

clc;
clear all;

P1=1/2;//relative frequency of packets for user class1 
P2=1/3;//relative frequency of packets for user class2
P3=1/6;//relative frequency of packets for user class3
R1=16; //data rate in kbps for P1
R2=64; //data rate in kbps for P2
R3=1024; //data rate in kbps for P3
S1=16;//number of slots assigned to the R1 user
S2=8;//number of slots assigned to the R2 user
S3=2;//number of slots assigned to the R3 user

//solution
//Using Equation 17.20 from page no 616
Ravg=(P1*R1*S1+P2*R2*S2+P3*R3*S3)/(P1*S1+P2*S2+P3*S3);
// For equal latency, using Eq 17.18
Rav=1/(P1/R1+P2/R2+P3/R3);
// For Latency ratio=4, using Eq 17.19 from page no 616
PL=4;
C=(P1+P2+PL*P3)/(P1/R1+P2/R2+P3/R3);
printf('The average throughput for equal access condition is %.1f kbps \n ',Ravg);
printf('The average throughput by considering equal latency is %.1f kbps \n ',Rav);
printf('The average throughput by considering latency ratio as 4 is %.2f kkbps \n ',C)
disp("Ii is observed that equal access provides the highest average output")
