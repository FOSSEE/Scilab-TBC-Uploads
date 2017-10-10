// Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.4.a Pg No.251
//Title:Conversion in packed bed for same superficial velocity
//====================================================================================================================
clear
clc
//INPUT
L=2.5;//Lendth of bed(ft)
X_A=0.95;//Conversion
L_a=3;//Length of section a (ft)
L_b=2;//Length of section b (ft)

//CALCULATION
k_rho_L_by_u=log(1/(1-X_A));//First Order reactions
//For Section a
k_rho_L_by_u_a=k_rho_L_by_u*(L_a/L);
X_A_section_a=(1-exp(-k_rho_L_by_u_a));
//For Section b
k_rho_L_by_u_b=k_rho_L_by_u*(L_b/L);//Dimensionless Group based on ideal plug flow for first order reaction
X_A_section_b=(1-exp(-k_rho_L_by_u_b));
X_A_Ave=(X_A_section_b+X_A_section_a)/2;
Percent_X_A_Ave=X_A_Ave*100

//OUTPUT
//Console Output
mprintf('\n\tThe average converion when each section has same superficial velocity:%0.1f%%',Percent_X_A_Ave );
//File Output
fid= mopen('.\Chapter6_Ex4_a_Output.txt','w');
mfprintf(fid,'\n\tThe average converion when each section has same superficial velocity:%0.1f%%',Percent_X_A_Ave );
mclose(fid);
//=======================================================END OF PROGRAM=================================================
