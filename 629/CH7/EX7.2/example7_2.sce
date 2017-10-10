clear
clc
//Example 7.2 PRESSURE IN A PIPE
//Energy equation, (p1/gamma)+(alpha1*V1^2/2g)+hp=(p2/gamma)+(alpha2*V2^2/2g)+ht+hL
p1=0; //pressure at top of reservoir is p_atm=0
ht=0; 
hp=0;
V1=0; 
Gamma=9810; //specific weight[N/m^3]
alpha2=1;
z1=100; //[m]
z2=20; //[m]
L=2000; //[m]
D=0.2; //diameter[m]
A=%pi*D^2/4 //area[m^2]
Q=0.06; //rate of flow[m^3/s]
g=9.81; //[m/s^2]
V2=Q/A //[m/s]
hL=(0.02*(L/D)*V2^2)/(2*g) //head loss[m]
p2=p1+Gamma*((z1-z2)+hp-ht-hL-(alpha2*V2^2)/(2*g))/10^3 //pressure at L[kPa]
printf("\nThe pressure in the pipe at L=2000m is = %.f kPa.\n",p2)