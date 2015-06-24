
//To Determine the Moment of intertia for a slip of 8 percent
//Page 233
clc;
clear;
Tl=900; //load Torque
To=0;
s=8/100; //Slip
t=15;//time period for which the load torque was applied
Tm=675;// Limited motor Torque
N=600; //No Load Speed
Wo=2*%pi*N/60; //Angular Frequency
K=s/Tm; //Motor Constant
I=(t/(Wo*K*log((Tl-To)/(Tl-Tm)))); //Moment of Inertia

printf('The Moment of inertia of the flywheel is %g Kg m^2\n',I)
//Please Note the Calculation Mistake in the book. (Power of e)
