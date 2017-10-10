//Example 15.1
clc;

//Design a LPF having a cutoff frequency of 2 kHz
//With a pass band gain of 2
fh=2000;        //Cutoff frequency in Hz
C=0.01*10^-6;   //Assumed value of capacitor
R=invr(2*%pi*fh*C);
ceil(R);

//Given pass band gain Af= 1 + Rf/R1
Af=2;        //Pass band gain
Rf=R1*(Af-1);
//Now the most probable value for Rf and R1 is 10Kohm
printf('\nFeedback resistence used is 10000 ohm\n')
printf('\nInput resistence used is 10000 ohm\n')