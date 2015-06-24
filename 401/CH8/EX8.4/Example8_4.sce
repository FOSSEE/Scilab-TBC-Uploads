//Example 8.4
//Program to determine:
//(a)Drift time of the carriers
//(b)Junction capacitance of the photodiode

clear;
clc ;
close ;

//Given data
w=20*10^(-6);           //metre - WIDTH OF INTRINSIC REGION
r=500*10^(-6);          //metre - RADIUS
epsilon_s=10.5*10^(-11);//F/m - PERMITTIVITY
vd=10^5;                //m/s - DRIFT VELOCITY OF ELECTRONS

//(a)Drift time of the carriers
t_drift=w/vd;

//(b)Junction capacitance of the photodiode
A=%pi*r^2;
Cj=epsilon_s*A/w;

//Displaying the Results in Command Window
printf("\n\n\t (a)Drift time of the carriers is %1.0f ps.",t_drift/10^(-12));
printf("\n\n\t (b)Junction capacitance of the photodiode is %1.0f pF.",Cj/10^(-12));