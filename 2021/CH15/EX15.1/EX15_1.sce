//Finding of Velocities
//Given
T1=293;
T2=293;
P1=40;
P2=35;
R=287;
A1=30*10^-4;
A2=15*10^-4;
Q=0.15;
//To Find
rho1=P1/(R*T1);
V1=Q/(A1*rho1*10000);
rho2=P2/(R*T2);
V2=Q/(A2*rho2*10000);
disp("Velocity at Section-1 ="+string(V1)+" m/sec");
disp("Velocity at Section-2 ="+string(V2)+" m/sec");
