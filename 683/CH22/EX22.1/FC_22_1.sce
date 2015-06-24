// 22-1
clc;
clear;
u=0.28 //(coefficient of friction)
N=300 //(Engine rpm)
I=7.2 
Pmax= 0.1; 
R1=70;
R2=110;
n=2; //(Both sides of the plate are effective)
//Using Uniform Wear Theory
//Axial Force W
W=n*%pi*Pmax*R1*(R2-R1);
//Frictional Torque Tf
Tf=u*W*(R1+R2)/2*(10^-3);
w=2*%pi*N/60;
//Power P
P=Tf*w;
//Torque = Mass moment of inertia*angular acceleration
a=Tf/I;
t=w/a; 
//Angle turned by driving shaft theta1 through which slipping takes place
theta1=w*t;
//angle turned by driven shaft theta2
theta2=a*(t^2)/2;
E=Tf*(theta1-theta2);

  // printing data in scilab o/p window
printf("\nThe force is %0.1f N",W);
printf("\nThe Torque is %0.2f Nm",Tf);
printf("\nThe Power is %0.0f W",P);
printf("\nThe angular acceleration is %0.2f rad/sec^2",a);
printf("\nThe time taken is %0.1f sec",t);
printf("\nThe energy is %0.2f Nm",E);

//The difference in the answer of energy 'E' is due to rounding-off of values.






