
clear;
clc;

printf("\t Example 6.3\n");

T1=297; // river water temp.,K
T2=283; // ocean water temp., K
n=5; // no. of knots
k=0.5927; // thermal conductivity,W/(m*K)
a=998.8; //density of water, kg/m^3
Cp=4187; // heat capacity, J/kg/K
Pr=7.66;
x=1; //distance from forward edge,m

T3=(T1+T2)/2; // avg. temp.,K
v=1.085*10^-6; // kinematic viscosity, m^2/s

u=2.572; //velocity of knot,m/s

Rex=u/v //reynolds no.
Cf(x)=0.455/(log(0.06*Rex))^2 // friction coefficient

h=k/x*0.032*(Rex)^(0.8)*Pr^(0.43); // heat transfer coefficient,W/(m^2*K)
printf("\t friction coefficient is : %f\n",Cf);
printf("\t convective heat transfer coefficient at a distance of 1 m fom the forward edge is :%.0f W/(m^2*K)\n",h);
h1=a*Cp*u*Cf/2/(1+12.8*(7.66^0.68-1)*(Cf/2)^0.5);  //heat transfer coefficient,W/(m^2*K)
printf("\t heat transfer coefficient by another method is :%.0f W/(m^2*K)\n",h1);
printf("\t the two values of h differ by about 18 percent, which is within the uncertainity.");

//end