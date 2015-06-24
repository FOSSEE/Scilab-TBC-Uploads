//Exa:5.27
clc;
clear;
close;
printf("Dwg=n2*(dl/cy)*V(d^2(Vb)/dV^2)");
printf("\n Dwg=n2*(dl/cy)*V(d^2(V(1-exp(-V))))/dv^2");
printf("\n =CV(Z-V)exp(-V)");
printf("\n where C=n2(dl/cy)");
printf("\n waveguide dispersion will be zero , when V=2");