u=10^6;
disp("vdx=0.001*u");
vdx=0.001*u;
a=43.4*10^-4;  //say a=μe
b=5.9*10^7;  //say b=σ
disp("Ex=vdx/a");
Ex=vdx/a;
printf('\n The value of Ex is %fV/m',Ex);
disp("Jx=σ*Ex");
Jx=b*Ex;
printf('\n The value of Jx is %fA/m^2',Jx);