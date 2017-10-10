// Example 10_6
clc;clear;
//Given data
// Assume (vdot/L)_1=V1,(vdot/L)_2=V2;
V1=2.00;// m^2/s
V2=-1.00;// m^2/s
gamma1=1.50;// m^2/s
x_1=0;
y_1=1;
x_2=1;
y_2=-1;
x=1.0;
y=0;// where all spatial coordinates are in meters.

//Calculation
//From fig.10-53,The vortex is located 1 m above the point (1, 0) and vortex velocity has positive i direction
r_vortex=1.00;// m
V_vortex=[gamma1/(2*%pi*r_vortex) 0];// m/s
//Similarly, the first source induces a velocity at point (1, 0) at a 45° angle from the x-axis as shown in Fig. 10–53.
r_source1=sqrt(2);// m
V_source1=(V1)/(2*%pi*r_source1);// Resultant vector in m/s
theta=45;// angle between two vectors
// Function to find the velocity vector in i and j direction from resultant vector
 function [X]=fric(f)
    X(1)=f(1)^2 + f(2)^2-V_source1^2; // modulus(r)=sqrt(x^2+y^2)
    X(2)=tand(theta)*f(1)-f(2);// theta=tan^-1(y/x)
 endfunction

    f=[0.01 0.01]; // Initial guess to solve X
    V_source1_vec=fsolve(f,fric);// m/s (Calculating friction factor)
    
//Finally, the second source (the sink) induces a velocity straight down i.e in the negative j direction 
r_source2=1.00;/// m
V_source2=[0 (V2)/(2*%pi*r_source2)];// m/s
V=V_vortex+V_source1_vec+V_source2;//The resultant velocity in m/s
printf('\nThe resultant velocity, V = %0.3fi %1.0fj\n',V);

