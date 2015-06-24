//Finding of velocity at the outlet of a nozzle
//Given
k=1.4;
P1=294.3;
P2=137.34;
T1=303;
R=287;
//To Find
rho=P1/(R*T1);
V2=sqrt((2*k/(k-1))*(P1/rho)*(1-(P2/P1)^((k-1)/k)));
disp("velocity at the outlet of a nozzle ="+string(V2)+" m/sec");

