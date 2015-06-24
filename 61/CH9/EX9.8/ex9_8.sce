//ex9.8
P_D_avg=4*10^-3;    //from previous question
V_CC=24;
R_c=100;
P_out=(0.5*V_CC^2)/R_c;
n=(P_out)/(P_out+P_D_avg);    //n is efficiency
disp(n,'efficiency')