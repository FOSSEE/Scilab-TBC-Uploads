clear
clc
//Example 15.2 ESTIMATING Q FOR UNIFORM FLOW USING DARCY-WEISBACH EQUATION
g=32.2; //[ft/s^2]
l=10; //width[ft]
y=6; //depth [ft]
A=l*y //area[ft^2]
So=0.0016; //slope of the channel
v=1.2*10^-5; //[ft^2/s]
Rh=l*y/(l+2*y); //[ft]
ks=0.005; //[ft](Assume)
Rr=ks/(4*Rh) //relative roughness
//Estimating f from Rr, using Moody diagram
f=0.016;
//first iteration for V
V=sqrt(8*g*Rh*So/f) //[ft/s]
//Recalculate Re
Re=V*4*Rh/v
//Using Rr,new Re, read
f1=0.016; 
//f1=f,meets reasonable convergence criterion for V
Q=V*A //discharge [cfs]
printf("\nThe discharge of water is %.f cfs.\n",Q)