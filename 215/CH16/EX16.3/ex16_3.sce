clc
//Example 16.3
disp('Given')
disp('R=10 ohm L=2mH C=200 nF w=48 krad/s vs=100*cos(wt) mV')
R=10; L=2*10^-3; C=200*10^-9; w=48*10^3;
vsamp=100;
w0=1/sqrt(L*C)
printf("w0= %3.1f krad/s \n",w0*10^-3);
Q0=w0*L/R
printf("Q0=%d \n",Q0)
B=w0/Q0
printf("Bandwidth= %3.1f krad/s \n",B*10^-3);
//Number of half bandwidths be N
N=2*(w-w0)/B
disp(N)
//Impedance Z(s)=(1+i*N)*R
//Finding the magnitude and angle
magZ=sqrt(1+N^2)*R
angZ=atan(N)*(180/%pi)
disp(angZ,'angZ=')
printf("Equivalent impedance value=%3.2f ohm \n",magZ)
//Approx current magnitude is
Iamp=vsamp/magZ
printf("\n Approx current magnitude= %3.2f mA \n",Iamp);