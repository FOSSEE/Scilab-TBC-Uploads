clc

u_p=10; // m/s
scale=1/25;  // l_m/l_p
L=125; // m
meu=1.235*10^(-6); // m^2/s
meu_p=1.188*10^(-6); // m^2/s
rho_p=1025; // kg/m^3
rho_m=1000; // kg/m^3
A=3500; // wetted surface in m^2

u_m=u_p*sqrt(scale);

d=L*scale;
Re=d*u_m/meu; // Reynolds no.
C_F=0.075/(log10(Re)-2)^2; // Skin friction coefficient

res_skin=rho_m/2*u_m^2*(A*scale^2)*C_F;

res_tot=54.2; // N

F_resid_m=res_tot-res_skin;

F_resid_p=F_resid_m*rho_p/rho_m/scale^3;

Re_p=u_p*L/meu_p;

C_F_p=0.075/(log10(Re_p)-2)^2+0.0004;
C_F_pnew=1.45*C_F_p;

res_friction=rho_p/2*u_p^2*A*C_F_pnew;

Resistance=F_resid_p+res_friction;
disp("The total resistance of the prototype =")
disp(Resistance)
disp("N")
