// chapter 14
// example 14.9
// Determine motor torque, motor current and supply power factor
// page-878-879
clear;
clc;
// given
P=20; // in HP (power rating of motor)
E0=650; // in V (voltgae rating of motor)
N=1000; // in rpm
Ra=0.25; // in ohm (armature resistance)
K_af=0.03; // in NmA^2
K_res=0.075; // in Vs/rad
Es=230; // in V (supply voltage)
alpha=30; // in degree (firing angle)
// calculate
Em=sqrt(2)*Es; // calculation of peak value of supply voltage
// part- (a) // semiconvertor controlled dc drive
w=N*(2*%pi/60); // calculation of angular speed
T=K_af*((((Em/%pi)*(1+cosd(alpha)))-K_res*w)/(Ra+K_af*w))^2; // calculation of motor torque
Ia=sqrt(T/K_af); // calculation of motor current
Ea=(sqrt(2)*Es/%pi)*(1+cosd(alpha)); // calculation of motor terminal voltage
Ps=Ea*Ia; // calculation of input power
VA=Es*Ia*sqrt(5/6); // calculation of input volt-ampere
PF=Ps/VA; // calculation of supply power factor
printf("\nFor semiconvertor controlled DC drives");
printf("\nThe motor torque is \t\t T= %.2f Nm",T);
printf("\nThe motor current is \t\t Ia= %.2f A",Ia);
printf("\nThe supply power factor is \t PF= %.2f",PF);
// part  (b)
T=K_af*((((2*Em/%pi)*cosd(alpha))-K_res*w)/(Ra+K_af*w))^2; // calculation of motor torque
Ia=sqrt(T/K_af); // calculation of motor current
Ea=(2*sqrt(2)*Es/%pi)*cosd(alpha); // calculation of motor terminal voltage
Ps=Ea*Ia; // calculation of input power
VA=Es*Ia; // calculation of input volt-ampere
PF=Ps/VA; // calculation of supply power factor
printf("\n\nFor fullconvertor controlled DC drives");
printf("\nThe motor torque is \t\t T= %.2f Nm",T);
printf("\nThe motor current is \t\t Ia= %.2f A",Ia);
printf("\nThe supply power factor is \t PF= %.2f",PF);
// Note: The answer varies slightly due to precise calculations