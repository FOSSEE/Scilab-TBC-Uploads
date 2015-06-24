
//example 2-1 in page 16
clc;
//given data
Rmin=1.14;// minimum resistance 1.14 k-ohm
Rmax=1.26// maximum resistance 1.26 k-ohm
R=1.2;//stated value
dT=75-25;//change in temperature from 25 to 75 degree celsius
// calculation
ab=Rmax-R;//Absolute maximum error
abmin=Rmin-R;// Absolute minmum error
T=(ab/1.2)*100;// Tolerance
Rlarge=R+ab;//largest resistance  possible at 25 degree celsius 
dR_per_C=(1.26/10^6)*500;// resistance change per degree celsius dR_per_C
dR=dR_per_C*dT;// total resistance increase
R_75=Rlarge+dR;//maximum resistance at 75 degree celsius
printf("Percentage Tolerance to be stated=+/- %d percent \n",T);
printf("Maximum resistance at 75 degree celsius=%.4f K-ohm",R_75);
//result
//Tolerance=5%
//maximum resistance at 75 degree celsius=1.2915 kohm