clc;
clear;
printf("\t\t\tChapter2_example10\n\n\n");
// determination of optimum fin length and heat transferred by fin
k=8.32; // thermal conductivity of Type 304 stainless steel in BTU/(hr.ft.degree Rankine)from appendix table B2
hc=400; // the convective heat transfer coefficient given in BTU/(hr.ft^2. degree Rankine)
printf("\n\t\t\tSolution to part (a)\n");
delta_opt=0.55/(12*2);
// determination of dimension of one fin using the equation delta_opt=0.583*hc*Lc^2/k
Lc=sqrt(delta_opt*k/(0.583*hc));
printf("\nThe optimum length is %.3f in",Lc*12);
printf("\n\n\t\t\tSolution to part (b)\n");
A=Lc*delta_opt;
// determination of parameter for finding out efficiency from graph
parameter=Lc^1.5*sqrt(hc/(k*A));
printf("\nThe parameter value for finding the efficiency is: %.2f",parameter);
efficiency=0.6;
printf("\nThe efficiency found from the graph in figure 2.36 is %.1f", efficiency);
W=1/(2*12);// width in ft
T_w=190; // wall temperature in degree fahrenheit
T_inf=58; // ambient temperature in degree fahrenheit
L=1; // length in ft
delta=W/2; 
q_ac=efficiency*hc*2*W*sqrt(L^2+delta^2)*(T_w-T_inf);
printf("\nThe actual heat transferred is %d BTU/hr",q_ac);
