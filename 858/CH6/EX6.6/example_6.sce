clc
clear 
printf("example 6.6 page number 218\n\n")

M_A=36.5    //molar mass of HCl
M_B=18      //molar masss of water
w_A1=12;    //weight % of HCL
w_A2=4      //weight % of HCL
x_A1=(w_A1/M_A)/((w_A1/M_A)+((100-w_A1)/M_B));
printf('x_A1 =%f',x_A1)

x_B1=1-x_A1;
M1=100/((w_A1/M_A)+((100-w_A1)/M_B));
printf("\n\nmolar mass at point 1 = %f kg/kmol",M1)

//at point 2
x_A2=(w_A2/M_A)/((w_A2/M_A)+((100-w_A2)/M_B));
x_B2=1-x_A2;
M2=100/((w_A2/M_A)+((100-w_A2)/M_B));    //avg molecular weight at point 2
printf("\n\nmolar mass at point 2 = %f Kg/kmol",M2)

density_1=1060.7;    //in kg/m3
density_2=1020.15;   //in kg/m3
C_av=((density_1/M1)+(density_2/M2))/2;
printf("\n\nC_av = %f kmol/cubic m",C_av)

x_BM=(x_B2-x_B1)/(log (x_B2/x_B1));
Z=0.004    //in m
D_AB=2.5*10^-9;
N_A=(D_AB*C_av*(x_A1-x_A2))/(x_BM*Z);
printf("\n\nflux = %f kmol/sq m-s",N_A)
