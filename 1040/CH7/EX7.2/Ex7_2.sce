//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-7 Ex7.2 Pg No.270
//Title:The gradient for B in the liquid film
//===========================================================================================================
clear
clc
//INPUT
C_B0_by_C_Ai=40;
D_A_by_D_B=1.2;
sqrt_M=10;
phi=sqrt_M;//Assume the gradient for A is the same as when the gradient for B is negligible
eff_diff_distA_by_xL=(1/phi);

//CALCULATION
eff_diff_distB_by_xL=(1-eff_diff_distA_by_xL);
CB0_minus_CBbar_by_CB0=D_A_by_D_B*(1/C_B0_by_C_Ai)*(eff_diff_distB_by_xL/eff_diff_distA_by_xL);
C_Bbar_by_C_B0=(1-CB0_minus_CBbar_by_CB0);
sqrt_kC_B=sqrt(C_Bbar_by_C_B0);
phi_corrected=phi*sqrt_kC_B;
Percent_change=((phi-phi_corrected)/(phi))*100;

//OUTPUT
mprintf('\n  Percentage Decrease in Rate :%0.0f%% ',Percent_change);
mprintf('\n The decrease in rate is significant ,hence the gradient for B is significant in liquid film');
fid= mopen('.\Chapter7-Ex2-Output.txt','w');
mfprintf(fid,'\n  Percentage Decrease in Rate :%0.0f%% ',Percent_change);
mfprintf(fid,'\n The decrease in rate is significant ,hence the gradient for B is significant in liquid film');
mclose(fid);
//================================================END OF PROGRAM==========================================================
