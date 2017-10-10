//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.3.a Pg No. 248
//Title:Effect of Axial dispersion on conversion
//====================================================================================================================
clear
clc
//INPUT
u=1;//Superficial velocity (cm/s)
D=2*10^(-5)//Molecular Diffusivity(cm2/s)
Re=30;//Reynolds No.
Pe_a=0.25;//Peclet No. corresponding Re No. from Fig 6.10
dp=3*(10^-1);//Particle Size (cm)
L=48;//Length of the bed (cm)
X_A=0.93;//Conversion

//CALCULATION
Pe_dash=Pe_a*L/dp;//Refer Pg.No.247
one_minus_X_A=(1-X_A);
k_rho_L_by_u1=2.65;//From Fig6.12 for given  Pe_dash
X_A1=1-exp(-k_rho_L_by_u1);
//To increase the conversion more catalyst is needed
k_rho_L_by_u2=2.85;//From Fig6.12
X_A2=1-exp(-k_rho_L_by_u2);
Percentage_excess_cat=((k_rho_L_by_u2-k_rho_L_by_u1)/k_rho_L_by_u1)*100;

//OUTPUT
//Console Output
mprintf('\n The effect of axial dispersion is significant and the percentage excess of catalyst = %.0f%%',Percentage_excess_cat );

//File Output
fid= mopen('.\Chapter6_Ex3_a_Output.txt','w');
mfprintf(fid,'\n The effect of axial dispersion is significant and the percentage excess of catalyst = %.0f%%',Percentage_excess_cat );
mclose(fid);
//==============================================END OF PROGRAM=========================================================



