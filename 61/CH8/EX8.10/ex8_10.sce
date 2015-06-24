//ex8.10
V_DD=-15;    //p=channel MOSFET
g_m=2000*10^-6;    //minimum value from datasheets
R_D=10*10^3;
R_L=10*10^3;
R_S=4.7*10^3;
R_d=(R_D*R_L)/(R_D+R_L);    //effective drain resistance
A_v=g_m*R_d;
R_in_source=1/g_m;
R_in=(R_in_source*R_S)/(R_in_source+R_S);    //signal souce sees R_S in parallel with input resistance at source terminal(R_in_source)
disp(A_v,'minimum voltage gain')
disp(R_in,'Input resistance seen from signal source in ohms')