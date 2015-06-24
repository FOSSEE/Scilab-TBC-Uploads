
clear;
clc;

printf("\t Example 7.2\n");

T1 = 300; // air temp.,K
T2=313; // final air temp.,K
v=2; // air velocity,m/s
D=0.01; // inner diameter of pipe,m
l=0.2; // length surrounded by heater
Red=v*D/(16.4*10^-6); // reynolds no.
Pr=0.711; // prandtl no.
G=Red*Pr*D/l; // graetz no.

Q=1.159*1004*v*(T2-T1)*(1/80); // power input, W/m^2
printf("\t power input is : %.0f  W/m^2\n",Q);

Tex=T2+Q*D/(5.05*0.0266) // wall temp. at the exit,K
Tex1=Tex-273.1;

printf("\t wall temp. at the exit is: %.1f C\n",Tex1);

//end