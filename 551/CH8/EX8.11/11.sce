clc
a=139250; //Nm^4/(kg-mol)^2
b=0.0314; //m^3/kg-mol
R0=8314; //Nm/kg-mol K
v1=0.2*32; //m^3/kg-mol
v2=0.08*32; //m^3/kg-mol
T=333; //K
disp("(i) Work done during the process")
W=integrate('R0*T/(v-b) - a/v^2', 'v', v1, v2);
disp("W=")
disp(W)
disp("Nm/kg-mol")


disp("(ii) The final pressure")
p2=R0*T/(v2-b) - a/v2^2;
disp("p2=")
disp(p2)
disp("N/m^2")