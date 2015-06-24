clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-5.6 Page No.102\n');

//From Example Problem 5.5
Sy=71000;                 //[lb/in^2] Yield strength
Smax=8148.7331 ;          //[lb/in^2] Maximum stress
Smin=0;                   //[lb/in^2] Minimum stress
Smean=(Smax+Smin)/2;      //[lb/in^2] Mean stress
Salt=(Smax-Smin)/2;       //[lb/in^2] Alternating stress
Sn=18000;                 //[lb/in^2] Modified endurance strength
Kt=1.32                   //[] Stress concentration factor

Nd=100000;                //[cycles] Desired life

Snn=Sn*(10^6/Nd)^0.09;          //[lb/in^2]

N=inv(Smean/(0.5*Sy)+Kt*Salt/Snn);  //[] Factor of safety

mprintf('\n The new factor of safety for this condition is %f.',N);
