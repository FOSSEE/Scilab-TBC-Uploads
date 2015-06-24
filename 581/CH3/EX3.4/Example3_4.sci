
clear;
clc;

printf("\t Example 3.4\n");

m=5.795; //flow rate of oil, kg/s
T1=454; //Entering Temperature of oil, K
T2=311; //Exit Temperature of oil, K
T3=305; // Entering Temperature of water, K
T4=322; //Exit Temperature of water, K
c=2282; //heat capacity, J/(kg*K)
U=416; //overall heat transfer coefficient , J/(m^2*K*s)
F=0.92; // Correction factor for 2 shell and 4 tube-pass exchanger,         since R=(T1-T2)/(T4-T3)=8.412 >1, P=(T4-T3)/(T1-T2)=0.114,we can get this value of F by using value of P =R*0.114

A=(m*c*(T1-T2))/(U*F*((T1-T4-T2+T3)/log((T1-T4)/(T2-T3))));
printf("\t area for heat exchanger is : %.1f m^2\n", A);
//End