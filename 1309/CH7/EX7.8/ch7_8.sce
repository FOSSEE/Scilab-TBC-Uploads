clc;
clear;
printf("\t\t\tChapter7_example8\n\n\n");
// Estimation of force exerted on the pole
// properties of air at given conditions from appendix table D1
rou= 0.0735; // density in Ibm/ft^3 
v= 16.88e-5; // viscosity in ft^2/s 
V=20*5280/3600; // flow velocity in ft/s
printf("\nThe flow velocity is %.1f ft/s",V);
D=12/12; // diameter of pole in ft
L=30;// length of pole in ft
gc=32.2;
Re_D=V*D/v; // Reynolds Number for flow past the pole
printf("\nThe Reynolds Number for flow past the pole is %.2e ",Re_D);
Cd_cylinder=1.1; // value of Cd for smooth cylinder from figure 7.22
A_cylinder=D*L; // frontal area of pole
printf("\nThe frontal area of pole is %d sq.ft",A_cylinder);
Df_cylinder=Cd_cylinder*(1/2)*rou*V^2*A_cylinder/gc;
printf("\nThe Drag force exerted on only the pole is %.1f lbf",Df_cylinder);
D_square=2/12; // length of square part of pole
L_square=4;
Re_square=V*D_square/v; // Reynolds Number for square part of pole
printf("\nThe  Reynolds Number for square part of pole is %.1e",Re_square);
Cd_square=2; // Corresponding value of Cd for square part from figure 7.23
A_square=D_square*L_square; // projected frontal area of square part
printf("\nThe frontal area of square part of pole is %.3f sq.ft",A_square);
Df_square=Cd_square*(1/2)*rou*V^2*A_square/gc;
printf("\nThe Drag force exerted on cross piece of the pole is %.2f lbf",Df_square);
Df_total=Df_cylinder+Df_square;
printf("\nThe total drag force on the pole is %.1f lbf",Df_total);
