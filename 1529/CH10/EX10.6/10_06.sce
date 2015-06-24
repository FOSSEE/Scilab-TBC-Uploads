//Chapter 10, Problem 6, figure 10.13
clc;
I=20;                   //current flows through a load
R=2;                    //load 
r=0.01;                 //wattmeter coil resistance
P=I^2*R;                //power dissipated in the load 
Rt=R+r;                 //total resistance
P1=I^2*Rt;              //wattmeter reading
printf("(a) Power dissipated in the load = %f W\n\n\n",P);
printf("(b) Wattmeter reading = %f W",P1);
