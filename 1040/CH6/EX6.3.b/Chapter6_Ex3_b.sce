//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.3.b Pg No. 248
//Title:Effect of conversion on reducing the length to half
//====================================================================================================================
clear
clc
//INPUT
L_old=48;// Old bed length (cm)
L_new=L_old/2;//New bed length (cm)
k_rho_L_by_u_old=2.65;//Refer Ex6.3.a
Pe_dash_old=40;//Refer Ex6.3.a

//CALCULATION
k_rho_L_by_u_new=k_rho_L_by_u_old/2;
X_A_cal=(1-exp(-k_rho_L_by_u_new));//Calculated conversion
Pe_dash_new=Pe_dash_old/2;
k_rho_L_by_u_graph=1.3992;//Value obtained from Figure6.12 for the calculated conversion
Percentage_excess_cat=((k_rho_L_by_u_graph-k_rho_L_by_u_new)/k_rho_L_by_u_new)*100;

//OUTPUT
//Console Output
mprintf('\n The effect of axial dispersion is less on reducing the bed length \n The percentage excess of catalyst = %.0f%%',Percentage_excess_cat );

//File Output
fid= mopen('.\Chapter6_Ex3_b_Output.txt','w');
mfprintf(fid,'\n The effect of axial dispersion is less on reducing the bed length \n The percentage excess of catalyst = %.0f%%',Percentage_excess_cat );
mclose(fid);
//================================================================END OF PROGRAM==========================================
