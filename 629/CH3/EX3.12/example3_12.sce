clear
clc
//Example 3.12 BUOYANT FORCE ON A METAL PART
//dimensions of wooden block
l=50; //[mm]
b=50; //[mm]
h=10; //[mm]
y=7.5; //submerged height[mm]
V=l*b*y //volume of block submerged[mm^3]
g_w=9800; //specific weight of water[N/m^3]
Fb1=g_w*V*10^(-9) //buoyant force[N], (factor 10^(-9)m^3/mm^3)
S1=0.3;
V1=l*b*h //volume of block[mm^3]
W1=g_w*S1*V1*10^(-9) //weight of block[N]
T=Fb1-W1 //tension in cord[N]
printf("\n The tension in the cord = %.3f N.\n",T)

V2=6600; //volume of metal[mm^3]
Fb2=g_w*V2*10^(-9) //buoyant force[N]
//Equilibrium equation, W2-T-Fb2=0 
g=9.81; //[m/s^2]
W2=T+Fb2 //weight of metal[N]
m2=W2*10^3/g //mass of metal[gm](factor 10^3g/1kg)
printf("\n The mass of metal part = %.1f grams.\n",m2)