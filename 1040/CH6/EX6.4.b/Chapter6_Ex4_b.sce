// Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.4.b Pg No.251
//Title:Overall conversion for different velocities
//====================================================================================================================
clear
clc
//INPUT
u_oa_by_u0=0.88;//Refer equation 3.64
u_ob_by_u0=1.12;
X_A=0.95;//Conversion
L=2.5;//(ft)
L_a=3;//Length of section a (ft)
L_b=2;//Length of section b (ft)

//CALCULATION
k_rho_L_by_u=log(1/(1-X_A));//First Order reaction
//For Section a
k_rho_L_by_u_a=k_rho_L_by_u*(L_a/L)*(1/u_oa_by_u0);
X_A_section_a=(1-exp(-k_rho_L_by_u_a));
delP_a_by_alpha_u0_pow=L_a*(u_oa_by_u0);//Refer equation 3.64

//For Section b
k_rho_L_by_u_b=k_rho_L_by_u*(L_b/L)*(1/u_ob_by_u0);//Dimensionless Group based on ideal plug flow for first order reaction
delP_b_by_alpha_u0_pow=L_b*u_ob_by_u0;
X_A_section_b=(1-exp(-k_rho_L_by_u_b));
X_A_avg=(u_oa_by_u0*X_A_section_a+u_ob_by_u0*X_A_section_b)/2;
Percent_X_A_avg=X_A_avg*100;

//OUTPUT
//Console Output
mprintf('\nThe overall conversion for different velocities:%0.1f%% ',Percent_X_A_avg );

//File Output
fid= mopen('.\Chapter6_Ex4_b_Output.txt','w');
mfprintf(fid,'\nThe overall conversion for different velocities:%0.1f%% ',Percent_X_A_avg );
mclose(fid);
//==================================================END OF PROGRAM======================================================




