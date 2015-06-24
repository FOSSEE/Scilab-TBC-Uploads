//Chapter 9
//page no 336
//given
clc;
clear all;
n1=1;
n2=1.5;
a=25;           //in micrometer
y=3;          //in micrometer
Csim=16*(n1/n2)^2/%pi/[1+(n1/n2)]^4*[2*acos(y/2/a)-(y/a)*[1-(y/2/a)^2]^0.5];  
//lateral coupling coefficient
a=2*acos(y/2/a)-(y/a)*sqrt(1-(y/2/a)^2);
b=16*(n1/n2)^2/%pi/[1+(n1/n2)]^4;
printf("\n Lateral  coupling coefficient,Csim= %0.2f\n",Csim);
Lsim=-10*log10(1-Csim);
printf("\n Insertion Loss,Lsim= %0.1f dB\n",Lsim);
//Answer wrong in book
