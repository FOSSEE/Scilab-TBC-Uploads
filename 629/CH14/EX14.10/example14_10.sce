clear
clc
//Example 14.10 IMPULSE TURBINE
z1=1670; //[m]
z2=1000; //[m]
g=9.81; //[m/s^2]
L=6000; //length[m]
f=0.015;
Dj=0.18; //diameter [m]
Aj=%pi*Dj^2/4 //area[m^2]
Dp=1; //diameter of penstock[m]
Ap=%pi*Dp^2/4 //area[m^2
//Energy equation, (p1/gamma)+(V1^2/2g)+z1=(p2/gamma)+(Vj^2/2g)+z2+hL
//p1=0,p2=0 ,Vp=Vj*(Aj/Ap), hL=f*L*Vp^2/(D*2*g)
Vj=sqrt(2*g*(z1-z2)/(1+f*L*(Aj/Ap)^2/Dp)) //jet velocity[m/s]
Gamma=9810; 
Q=Aj*Vj //[m^3/s])
P=Q*Gamma*Vj^2/(2*g*10^3) //gross power[kW]
eta=0.85; //efficiency
Pd=P*eta //power developed [kW]
printf("\nThe power developed by the turbine = %.f kW.\n",Pd)

//Angular speed of wheel
r=1.5; //radius[m]
Vb=Vj/2 //[m/s]
w=Vb/r //[rad/s]
//Wheel speed
N=w*60/(2*%pi) //in rpm
printf("\nAngular speed of wheel for maximum efficiency = %.f rpm.\n",N)

//Torque
T=Pd/w //[kN.m]
printf("\nThe torque on the turbine shaft = %.f kN.m\n",T)