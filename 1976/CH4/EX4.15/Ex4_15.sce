
//To determine the Moment of intertia of the flywheel
//Page 234
clc;
clear;
Pi=100*(10^3); //Power Rating
P=6; //Poles of the Machine
N=950; //Rated Speed
Wo=2*%pi*N/60; //Angular Frequency
Ta=3000; //Additional Torque
Tmin=600; //Constant Load Torque
Tm=Pi*60/(2*%pi*N); //Rated Torque
Tmax=2*Tm; //Maximum Torque
Tl=Tmin+Ta; //Total Torque
tp=15; //Time for which the additional torque is applied
//Assuming Slip Characteristic to Be a Straight line
s=0.05;
K=s/Tm; //Motor Load Constant

I=tp/(Wo*K*log((Tl-Tmin)/(Tl-Tmax))); //Moment Of intertia

Tm1=1500; //Trasistion Torque

t=I*Wo*K*log((Tmax-Tmin)/(Tm1-Tmin)); //Time Taken to become 1500 Nm

printf('a) The Moment of intertia of the flywheel for Maximum Torque to be twice the rated torque is %g Nm\n',I)
printf('b) The Time Taken after the removal of additional load before the motor torque becomes 1500 Nm is %g seconds\n',t)
