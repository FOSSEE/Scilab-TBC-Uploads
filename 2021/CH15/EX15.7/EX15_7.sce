//Finding of Mach's Number
//Given
k=1.4;
R=287;
T=273;
T1=273-15;
v=900;
p1=8*10^4;
//To Find
V=v*(5/18);
C=sqrt(k*R*T);
Ma=V/C;
ps=p1*((1+((k-1)/2)*Ma^2)^(k/(k-1)));
Ps=ps*10^-4;
Ts=T1*((1+((k-1)/2)*Ma^2));
rho=ps/(R*T);
t=Ts-T;
disp("Mach Number ="+string(Ma)+" No Units");
disp("Density ="+string(rho)+" Kg/m^3");
disp("Pressure ="+string(Ps)+" N/cm^2");
disp("Temperature ="+string(t)+" celcius")
