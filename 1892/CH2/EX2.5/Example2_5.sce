// Example 2.5

clear; clc; close;
format('v',7);

// Given data
V1=230;//in volt
f=50;//in Hz
Vm=100;//in volt
Im=2;//in Ampere
Wm=40;//in watts
Va=80;//in volt
Ia=1;//in Ampere
Wa=50;//in watts

//Calculations
Z1em=Vm/Im;//in ohm
R1em=Wm/Im^2;//in ohm
X1em=sqrt(Z1em^2-R1em^2);//in ohm
R1m=R1em/2;//in ohm
X1m=X1em/2;//in ohm
fi_m=atand(X1m/R1m);//in degree

Z1ea=Va/Ia;//in ohm
R1ea=Wa/Ia^2;//in ohm
X1ea=sqrt(Z1ea^2-R1ea^2);//in ohm
Ra=R1ea-R1m;//in ohm
Xa=X1ea-X1m;//in ohm
fi_a=90-fi_m;//in degree
//after connecting capacitor
Xc=Xa-tand(-fi_a)*Ra
C=1/2/%pi/f/Xc;//in Farad
disp(C*10^6,"Value of capacitance in micro farad : ");
