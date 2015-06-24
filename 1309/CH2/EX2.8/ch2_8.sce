clc;
clear;
printf("\t\t\tChapter2_example8\n\n\n");
// determination of temperature profile, heat transferred, efficiency, effectiveness.
printf("\n\t\t\tSolution to part (a)");
k=24.8; // thermal conductivity of 1C steel in BTU/(hr.ft.degree Rankine)from appendix table B2
D=(5/16)/12; // diameter of the rod in ft
P=(3.14*D); // Circumference of the rod in ft
printf("\nThe perimeter is %.4f ft",P);
A=(3.14/4)*D^2; // Cross sectional area of the rod in sq.ft
printf("\nThe Cross sectional area is %.6f sq.ft",A);
hc=1; // assuming the convective heat transfer coefficient as 1 BTU/(hr. sq.ft. degree Rankine)
m=sqrt(hc*P/(k*A));
printf("\nThe value of parameter m is: %.3f/ft",m);
L=(9/2)/12; // length of rod in ft
// using the equation (T-T_inf)/(T_w-T_inf)=(cosh[m(L-z)])/(cosh(mL)) for temperature profile
T_inf=70;
T_w=200;
dT=T_w-T_inf;
const=dT/cosh(m*L);
printf("\nThe temperature profile is:\t");
printf("T=%d+%.2fcosh[%.3f(%.3f-z)]",T_inf,const,m,L);
z=0:.05:L;
T=T_inf+const*cosh(m*(L-z));
x=linspace(0,4.5,8);
plot(x,T);
a=gca();
a.data_bounds=[0,140;5,200];
newticks=a.x_ticks;
newticks(2)=[0;1;2;3;4;5];
newticks(3)=['0';'1';'2';'3';'4';'5'];
a.x_ticks=newticks;
newticks1=a.y_ticks;
newticks1(2)=[140;150;160;170;180;190;200];
newticks1(3)=['140';'150';'160';'170';'180';'190';'200'];
a.y_ticks=newticks1;
xlabel('Rod length z, in');
ylabel('Temperature T, degree fahrenheit');
title('Temperature_distribution_within_the_rod');
printf("\n\n\t\t\tSolution to part (b)\n");
// the heat transferred can be calculated using the equation qz=k*A*m*(T_w-T_inf)*tanh(m*L)
qz=k*A*m*dT*tanh(m*L);
printf("\nThe heat transferred is %.2f BTU/hr",qz);
printf("\n\n\t\t\tSolution to part (c)\n");
mL=m*L;
printf("\nThe value of mL is: %.3f",mL);
efficiency=0.78;
printf("\nThe efficiency found from the graph in figure 2.30 is: %.2f",efficiency);
printf('\n\n\t\t\tSolution to part (d)\n');
// the effectiveness can be found using the equation effectiveness=sqrt(k*P/h*A)*tanh(mL)
effectiveness=sqrt(k*P/(hc*A))*tanh(mL);
printf("\nThe effectiveness is found to be: %.1f",effectiveness);
