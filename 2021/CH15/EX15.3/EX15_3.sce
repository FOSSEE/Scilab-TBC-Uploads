//Finding of Mach Number
//Given
k=1.4;
R=287;
T=288;
V=900;
//To Find
C=sqrt(k*R*T);
C1=C*(18/5);
disp("Speed of Sound waves ="+string(C1)+" Km/hr");
M=V/C1;
disp("Mach Number = "+string(M)+" No units");
