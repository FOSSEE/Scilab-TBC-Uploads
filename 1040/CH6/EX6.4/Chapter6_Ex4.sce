// Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.4 Pg No.251
//Title:Conversion in packed bed for same superficial velocity
//====================================================================================================================
clear
clc
//COMMON INPUT 
L=2.5;//Lendth of bed(ft)
X_A=0.95;//Conversion
L_a=3;//Length of section a (ft)
L_b=2;//Length of section b (ft)
u_oa_by_u0=0.88;//Refer equation 3.64
u_ob_by_u0=1.12;
L=2.5;//(ft)


//CALCULATION (Ex6.4.a)
k_rho_L_by_u=log(1/(1-X_A));//First Order reactions
//For Section a
k_rho_L_by_u_a=k_rho_L_by_u*(L_a/L);
X_A_section_a=(1-exp(-k_rho_L_by_u_a));
//For Section b
k_rho_L_by_u_b=k_rho_L_by_u*(L_b/L);//Dimensionless Group based on ideal plug flow for first order reaction
X_A_section_b=(1-exp(-k_rho_L_by_u_b));
X_A_Ave=(X_A_section_b+X_A_section_a)/2;
Percent_X_A_Ave=X_A_Ave*100

//CALCULATION (Ex6.4.b)
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

//OUTPUT(Ex6.4.a)
mprintf('\n OUTPUT Ex6.4.a');
mprintf('\n==========================================================');
mprintf('\nThe average converion when each section has same superficial velocity:%0.1f%%',Percent_X_A_Ave );

//OUTPUT(Ex6.4.b)
mprintf('\n\n\n OUTPUT Ex6.4.b');
mprintf('\n==========================================================');
mprintf('\nThe overall conversion for different velocities:%0.1f%% ',Percent_X_A_avg );

//FILE OUTPUT
fid= mopen('.\Chapter6-Ex4-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex6.4.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe average converion when each section has same superficial velocity:%0.1f%%',Percent_X_A_Ave );
mfprintf(fid,'\n\n\n OUTPUT Ex6.4.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe overall conversion for different velocities:%0.1f%% ',Percent_X_A_avg );
mclose(fid);
//=======================================================END OF PROGRAM=================================================
