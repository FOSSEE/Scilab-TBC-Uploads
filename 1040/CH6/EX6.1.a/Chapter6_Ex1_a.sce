//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.1.a Pg No.236
//Title:Power Consumption per unit volume at 300rpm
//====================================================================================================================
clear
clc
//INPUT
D_a=0.1;
D_t=0.3;
H=0.3;
N_P=5.5;
rho=1000;
n=5;
S_f=6;//Scale up factor in diameter
//CALCULATION
P_unit_vol=(N_P*n^3*D_a^5)/(%pi*(1/4)*D_t^2*H);
P_thousand_gal=P_unit_vol*5.067;
t=(4/n)*(D_t/D_a)^2*(H/D_t);
P_unit_vol_new=S_f^2*P_thousand_gal;

//OUTPUT
//Console Output
mprintf('\n The Power consumption per unit volume at 300rpm = %.2f HP/1000 gal',P_thousand_gal);
mprintf('\n\ The Power consumption scaling up sixfold in diameter = %.0f HP/1000 gal',P_unit_vol_new); 

//File Output
fid= mopen('.\Chapter6_Ex1_a_Output.txt','w');
mfprintf(fid,'\n The Power consumption per unit volume at 300rpm = %.2f HP/1000 gal',P_thousand_gal);
mfprintf(fid,'\n\ The Power consumption scaling up sixfold in diameter = %.0f HP/1000 gal',P_unit_vol_new); 
mclose(fid);
//======================================================END OF PROGRAM=================================================
