clear;
clc;
printf("\t\t\tProblem Number 6.39\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.39 (page no. 297) 
// Solution

k=1.4; //the specific heats ratio //k=cp/cv
M=1; //(table 6.5) //The Mach number=the local velocity/velocity of sound
T0=800; //absolute temperature //unit:R
gc=32.17; //Unit:(LBm*ft)/(LBf*s^2) //gc is constant of proportionality
R=53.35; //gas constant //ft*lbf/lbm*R
p0=300; //psia //pressure

// * or "star" subscripts to conditions in which M=1;
// "0" subscript refers to isentropic stagnation
//Refer to figure 6.26,
//Tstar/T0=0.8333
Tstar=T0*0.8333; //temperature when M=1 //unit:R
printf("If the mach number at the outlet is unity,temperature is %f R\n",Tstar);
Vat=sqrt(gc*R*Tstar*k); //ft/s //Vat=V2 //local velocity of sound
printf("If the mach number at the outlet is unity,velocity is %f ft/s\n\n",Vat)

//For A/Astar=2.035
//The table yields
M1=0.3; //mach number at inlet
printf("At inlet,The mach number is %f\n",M1)
//pstar/p0=0.52828
pstar=p0*0.52828;  //pressure when M=1 //psia
//also,
//T1/T0=0.98232 and p1/p0=0.93947
//Therefore,
T1=T0*0.982332; //unit:R //T1=temperature at inlet
printf("At inlet,The temperature is %f R\n",T1);
p1=p0*0.93947; //psia //p1=pressure at inlet
printf("At inlet,The pressure is %f psia\n",p1);
//From the inlet conditions derived,
Va1=sqrt(gc*k*R*T1); //ft/s //V1=velocity at inlet
V1=M1*Va1; //ft/s //velocity
printf("At inlet,The velocity is %f ft/s\n",V1);
//The specific volume at inlet is found from the equation of state for an ideal gas:
v=(R*T1)/(p1*144); //ft^3/lbm //1 ft^2=144 in^2(for conversion of unit) //specific volume
rho=inv(v); //inverse of specific volume //density
A=2.035; //area //ft^2
m=rho*A*V1; //mass flow //unit:lbm/s
printf("At inlet,The mass flow is %f lbm/s\n",m);
