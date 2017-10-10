
clear//

//Variable Declaration
b=6 //Width in inches
h=10 //Depth in inches
P1=6000 //Force in lb
P2=3000 //Force in lb
L=4 //Length in ft
P=-13400 //Load in lb
M=6000 //Moment in lb.ft
y=5 //Depth in inches
P2=-9800 //Load in lb
M2=-12000 //Moment in lb.ft

//Calculations
A=b*h //Area in in^2
I=b*h**3*12**-1 //Moment of inertia in in^4
T=(P1*L+P2*L*3)*(6)**-1 //Tension in the cable in lb

//Computation of largest stress
sigma_B=(P*A**-1)-(M*y*12*I**-1) //Maximum Compressive Stress caused by +ve BM in psi
sigma_C=(P2*A**-1)-(M2*-y*12*I**-1) //Maximum Compressive Stress caused by -ve BM in psi

sigma_max=max(-sigma_B,-sigma_C) //Maximum Compressive Stress in psi

//Result
printf("\n The maximum Stress is %0.0f psi",sigma_max)
