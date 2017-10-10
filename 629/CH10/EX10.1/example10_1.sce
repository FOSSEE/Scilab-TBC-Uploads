clear
clc
//Example 10.1 CLASSIFYING FLOW IN CONDUITS
D=0.005; //[m]
//For Air
Va=12; //velocity[m/s]
va=1.79*10^-5; //viscosity[m^2/s]
//Reynolds number
Re_a=Va*D/va
printf("\n(a)Since Re= %.f > 3000, the flow is turbulent.\n",Re_a)
//Entrance length
Le_a=50*D //[m]
printf("\nThe entrance length for air = %.2f m.\n",Le_a)

//For Water
m=0.008; //mass flow rate[kg/s]
mu=1.14*10^-3; //[N.s/m^2]
Re_w=4*m/(%pi*D*mu)
printf("\n(b)Since, Re= %.f < 2000, the flow is laminar.\n",Re_w)
Le_w=0.05*Re_w*D //[m]
printf("\nThe entrance length for water = %.3f m.\n",Le_w)