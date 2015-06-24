clc;
clear;
printf("\t\t\tChapter2_example11\n\n\n");
// determination of heat transferred and fin effectiveness
printf("\t\t\tSolution to part (a)\n");
//parameters of the problem are
N=9; // number of fins
delta=0.003/2; 
L=0.025;
Lc=L+delta;
R=0.219/2;
R2c=R+delta;
R1=R-L;
T_w=260; // root wall temperature in degree celsius
T_inf=27; // ambient temperature in degree celsius
hc=15; 
k=52; // thermal conductivity of cast iron in W/(m.K)from appendix table B2
Ap=2*delta*Lc;
As=2*3.14*(R2c^2-R1^2);
radius_ratio=R2c/R1; // for finding efficiency from figure 2.38
variable=Lc^1.5*sqrt(hc/(k*Ap));
printf("\n\nThe value of R2c/R1 is %.2f",radius_ratio);
printf("\n\nThe value of Lc^(3/2)(hc/kAp)^(1/2) is %.2f",variable);
efficiency=0.93; // efficiency from figure 2.38
printf("\n\nThe efficiency of the fin from figure 2.38 is %.2f",efficiency);
qf=N*efficiency*As*hc*(T_w-T_inf);
printf("\n\nThe heat transferred by the nine fins is %.1f w",qf);
Sp=0.0127; // fin spacing
Asw=2*3.14*R1*Sp*N; // exposed surface area
qw=hc*Asw*(T_w-T_inf);
printf("\n\nThe heat transferred by exposed surface of the cylinder is %d W",qw);
q=qf+qw;
printf("\n\nThe total heat transferred from the cylinder is %d W",q)
printf("\n\n\t\t\tSolution to part (b)\n");
H=N*(Sp+2*delta);// height of cylinder
Aso=2*3.14*R1*H; // surface area without fins
qo=hc*Aso*(T_w-T_inf);
printf("\n\nThe Heat transferred without fins is %d W",qo)
printf("\n\n\t\t\tSolution to part (c)\n");
effectiveness=q/qo; // effectiveness defined as ratio of heat transferred with fins to heat transferred without fins
printf("\nThe fin effectiveness is %.2f",effectiveness);
