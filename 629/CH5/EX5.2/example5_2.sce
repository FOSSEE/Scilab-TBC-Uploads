clear
clc
//Example 5.2 FLOW IN SLOPING CHANNEL
A=0.6; //depth[m]
theta=30; //slope(degrees)
V=12; //velocity[m/s]
Q=V*cosd(theta)*A //discharge per meter[m^2/s]
printf("\nThe discharge per meter width of the channel = %.2f m^3/s per meter.\n",Q)