//Finding of Mach Number and Mach Angle
//Given
k=1.4;
R=287;
T=263;
V=1200;
//To Find
C=sqrt(k*R*T);
Ma=V/C;
alpha=asind(1/Ma);
disp("Mach Number ="+string(Ma)+" No units");
disp("Mach Angle ="+string(alpha)+" Degrees");
