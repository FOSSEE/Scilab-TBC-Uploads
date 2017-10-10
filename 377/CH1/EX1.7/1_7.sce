disp("E=(pi^2)*(h^2)/(2*me*Lx^2)+(pi^2)*(h^2)/(2*me*Ly^2)+(pi^2)*(h^2)/(2*me*Lz^2)");
pi=3.14;
h=1.055;
me=0.01*9.1;
L=50;
E=3*(pi^2)*(h^2)/(2*me*L^2);
printf('\n The value of E in Joules is %f *(10^-18)',E);
f=E/1.6*10;
printf('\n The value of E in eV is %f',f);