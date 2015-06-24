//Finding of Mass Flow Rate
//Given
D1=0.4;
D2=0.2;
P1=27.468*10^4;
P2=25.506*10^4;
T1=293;
k=1.4;
R=287;
//To Find
A1=(%pi/4)*D1^2;
A2=(%pi/4)*D2^2;
rho1=P1/(R*T1);
rho2=((rho1^(1.4)*P2)/P1)^(1/1.4);
m=rho2*A2*sqrt((2*k/(k-1))*(P1/rho1)*(1-(P2/P1)^((k-1/k)))/(1-(P2/P1)^(2/k))*(A2/A1)^2);
disp("Mass Flow Rate ="+string(m)+" Kg/sec");
