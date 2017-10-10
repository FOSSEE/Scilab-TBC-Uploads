//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.3 Pg No. 248
//Title:Effect of Axial dispersion and length on conversion
//====================================================================================================================
clear
clc
// COMMON INPUT
u=1;//Superficial velocity (cm/s)
D=2*10^(-5)//Molecular Diffusivity(cm2/s)
Re=30;//Reynolds No.
Pe_a=0.25;//Peclet No. corresponding Re No. from Fig 6.10
dp=3*(10^-1);//Particle Size (cm)
L=48;//Length of the bed (cm)
X_A=0.93;//Conversion
L_old=48;// Old bed length (cm)
L_new=L_old/2;//New bed length (cm)



//CALCULATION (Ex6.3.a)
Pe_dash=Pe_a*L/dp;//Refer Pg.No.247
one_minus_X_A=(1-X_A);
k_rho_L_by_u1=2.65;//From Fig6.12 for given  Pe_dash
X_A1=1-exp(-k_rho_L_by_u1);
//To increase the conversion more catalyst is needed
k_rho_L_by_u2=2.85;//From Fig6.12
X_A2=1-exp(-k_rho_L_by_u2);
Percentage_excess_cat_a=((k_rho_L_by_u2-k_rho_L_by_u1)/k_rho_L_by_u1)*100;

//CALCULATION(Ex6.3.b)
k_rho_L_by_u_new=k_rho_L_by_u1/2;
X_A_cal=(1-exp(-k_rho_L_by_u_new));//Calculated conversion
Pe_dash_new=Pe_dash/2;
k_rho_L_by_u_graph=1.3992;//Value obtained from Figure6.12 for the calculated conversion
Percentage_excess_cat_b=((k_rho_L_by_u_graph-k_rho_L_by_u_new)/k_rho_L_by_u_new)*100;

//OUTPUT(Ex6.3.a)
mprintf('\n OUTPUT Ex6.3.a');
mprintf('\n==========================================================');
mprintf('\n The effect of axial dispersion is significant and the percentage excess of catalyst = %.0f%%',Percentage_excess_cat_a );

//OUTPUT (Ex6.3.b)
mprintf('\n\n\n OUTPUT Ex6.3.b');
mprintf('\n==========================================================');
mprintf('\n The effect of axial dispersion is less on reducing the bed length \n The percentage excess of catalyst = %.0f%%',Percentage_excess_cat_b );

//FILE OUTPUT
fid= mopen('.\Chapter6-Ex3-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex6.3.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n The effect of axial dispersion is significant and the percentage excess of catalyst = %.0f%%',Percentage_excess_cat_a );
mfprintf(fid,'\n\n\n OUTPUT Ex6.3.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n The effect of axial dispersion is less on reducing the bed length \n The percentage excess of catalyst = %.0f%%',Percentage_excess_cat_b );
mclose(fid);
//==============================================END OF PROGRAM=========================================================



