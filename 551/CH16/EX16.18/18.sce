clc
y=1.4;
p1=26.5; //kN/m^2
rho_1=0.413; //kg/m^3
M1=2;
R=287;

M2=sqrt(((y-1)*M1^2 + 2)/(2*y*M1^2 - (y-1)));
disp("Mach number M2=")
disp(M2)

p2=p1*(2*y*M1^2 - (y-1))/(y+1);
disp("p2=")
disp(p2)
disp("kN/m^2")

rho_2=rho_1*((y+1)*M1^2)/((y-1)*M1^2 + 2);
disp("density, rho_2 =")
disp(rho_2)
disp("kg/m^3")

T1=p1*10^3/rho_1/R;
disp("T1=")
disp(T1)
disp("K")

T2=T1*((y-1)*M1^2 + 2)*(2*y*M1^2 - (y-1))/((y+1)^2*M1^2);
disp("T2=")
disp(T2)
disp("K")

C1=sqrt(y*R*T1);
V1=M1*C1;
disp("V1=")
disp(V1)
disp("m/s")

C2=sqrt(y*R*T2);
V2=M2*C2;
disp("V2 =")
disp(V2)
disp("m/s")