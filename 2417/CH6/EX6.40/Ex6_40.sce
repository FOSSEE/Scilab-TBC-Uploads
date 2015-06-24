clear;
clc;
printf("\t\t\tProblem Number 6.40\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.40 (page no. 299) 
// Solution

// * or "star" subscripts to conditions in which M=1;
// "0" subscript refers to isentropic stagnation
//This problem will be solved by two methods(A and B)
printf("Method A\n"); //By equations:
k=1.4; //the specific heat ratio //k=cp/cv
R=53.3; //gas constant //ft*lbf/lbm*R
M=2.5; //mach number=the local velocity/velocity of sound
printf("Solution for (a)\n");
// T/Tstar = (k+1)/(2*(1+((1/2)*(k-1)*M^2)))
// Tstar/T0=2/(k+1)
//Therefore,
// (Tstar/T0)*(T/Tstar) = (T/T0)=1/(1+((1/2)*(k-1)*M^2))
T0=560; //absolute temperature or stagnation temperature //unit:R
T=T0/(1+((1/2)*(k-1)*M^2)); //temperature at M=2.5
printf("The temperature is %f R\n\n",T);
printf("Solution for (b)\n");
p=0.5; //static pressure //unit:psia
// p0/p = (T0/T)^(k/(k-1))
p0=p*14.7*((T0/T)^(k/(k-1))); //pressure at M=2.5 //unit:psia
printf("The pressure is %f psia\n\n",p0);
printf("Solution for (c)\n");
gc=32.17; //Unit:(LBm*ft)/(LBf*s^2) //gc is constant of proportionality
Va=sqrt(gc*k*R*T); //ft/s //local velocity of sound
V=M*Va; //valocity at M=2.5 //unit:ft/s
printf("The velocity is %f ft/s\n\n",V);
printf("Solution for (d)\n");
v=(R*T)/(p*14.7*144); //ft^3/lbm //1 ft^2=144 in^2 //specific volume at M=2.5
printf("The specific volume is %f ft^3/lbm\n\n",v);
printf("Solution for (e)\n");
//Mass velocity is definrd as the mass flow per unit area
// m/A=(A*V)/(v*A)=V/v
printf("The mass velocity is %f lbm/(s*ft^2)\n\n\n",V/v); //mass velocity at M=2.5


printf("Method B\n"); //By the gas tables: //table 6.5 gives
M=2.5; //mach number=the local velocity/velocity of sound
printf("Solution for (a)\n");
T0=560; //absolute temperature or stagnation temperature
//T/T0=0.44444
T=T0*0.44444; //temperature at M=2.5
printf("The temperature is %f R\n\n",T)
printf("Solution for (b)\n");
p=0.5; //static pressure
//p/p0=0.05853
p0=(p*14.7)/0.05853; //pressure at M=2.5
printf("The pressure is %f psia\n\n",p0);
printf("Solution for (c)\n");
printf("As before %f ft/s\n\n",V)
printf("Solution for (d)\n");
printf("As before %f ft^3/lbm\n\n",v)
printf("Solution for (e)\n");
printf("As before %f lbm/(s*ft^1)\n",V/v)
