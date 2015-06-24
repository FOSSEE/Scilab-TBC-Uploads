//Example 4.2.1 page 4.14

clc;
clear;
Ct= 7*10^-12;
Rt= 50*1*10^6/(50+(1*10^6));
B= 1/(2*%pi*Rt*Ct);
B=B*10^-6; //converting in mHz for displaying...
printf("The bandwidth of photodetector is %.2f MHz",B);
