clc
//Example 16.2
disp('Given')
disp('R=40Kohm L=1H C=1/64 uF w=8.2krad/s')
R=40*10^3; L=1; C=1/64 *10^-6; w=8.2*10^3;
//The value of Q0 must be at least 5 
Q0=5;
w0=1/sqrt(L*C)
printf("w0= %3.1f krad/s \n",w0*10^-3);
f0=w0/(2*%pi)
B=w0/Q0
printf("Bandwidth= %3.1f krad/s \n",B*10^-3);
//Number of half bandwidths be N
N=2*(w-w0)/B
disp(N)
//Admittance Y(s)=(1+i*N)/R
//Finding the magnitude and angle
magY=sqrt(1+N^2)/R
angY=atan(N)*(180/%pi)
disp(angY,'angY=')
printf("admittance value=%3.2f uS",magY*10^6)