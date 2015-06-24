//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.1 Pg No.236
//Title:Power Consumption at 300 rpm,speed of stirrer and blending time
//====================================================================================================================
clear
clc
// COMMON INPUT
D_a=0.1;
D_t=0.3;
H=0.3;
N_P=5.5;
rho=1000;
n=5;
S_f=6;//Scale up factor in diameter
P_by_V_limit=10;//Pressure per unit volume (HP/1000gal)
n1=5;
Da_by_Dt1=D_a/D_t;
Da_by_Dt2=0.5;

//CALCULATION (Ex6.1.a)
P_unit_vol=(N_P*n^3*D_a^5)/(%pi*(1/4)*D_t^2*H);
P_thousand_gal=P_unit_vol*5.067;
t=(4/n)*(D_t/D_a)^2*(H/D_t);
P_unit_vol_new=S_f^2*P_thousand_gal;

//CALCULATION (Ex6.1.b)
n_limit=(P_by_V_limit/P_unit_vol_new)^(1/3) *n1;//Pressure per unit vol propotional to n3
t_inc_factor=n1/n_limit;//t inversely propotional to n
rotational_speed=n_limit*60;//Speed in rpm

//CALCULATION (Ex6.1.c)
n2=(Da_by_Dt1/Da_by_Dt2)^(5/3)*n_limit;
rotaional_speed=n2*60;
t1=4*(1/Da_by_Dt1)^2*(H/D_t)*(1/n_limit);
t2=4*(1/Da_by_Dt2)^2*(H/D_t)*(1/n2);

//OUTPUT (Ex6.1.a)
mprintf('\n OUTPUT Ex6.1.a');
mprintf('\n==========================================================');
mprintf('\n The Power consumption per unit volume at 300rpm = %.2f HP/1000 gal',P_thousand_gal);
mprintf('\n\ The Power consumption scaling up sixfold in diameter = %.0f HP/1000 gal',P_unit_vol_new); 


//OUTPUT (Ex6.1.b)
mprintf('\n\n\n OUTPUT Ex6.1.b');
mprintf('\n==========================================================');
mprintf('\n The speed of the stirrer  = %.2f sec-1 or %.0f rpm',n_limit,rotational_speed);
mprintf('\n Blending time increases by factor of %.2f ',t_inc_factor); 

//OUTPUT(Ex6.1.c)
mprintf('\n\n\n OUTPUT Ex6.1.c');
mprintf('\n==========================================================');
mprintf('\n The new stirrer speed = %.2f sec-1 or %.0f rpm',n2,rotaional_speed); 
mprintf('\n The new blending time  for Da/Dt ratio of 0.5 = %.1f sec',t2); 

//FILE OUTPUT
fid= mopen('.\Chapter6-Ex1-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex6.1.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n The Power consumption per unit volume at 300rpm = %.2f HP/1000 gal',P_thousand_gal);
mfprintf(fid,'\n\ The Power consumption scaling up sixfold in diameter = %.0f HP/1000 gal',P_unit_vol_new);
mfprintf(fid,'\n\n\n OUTPUT Ex6.1.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n The speed of the stirrer  = %.2f sec-1 or %.0f rpm',n_limit,rotational_speed);
mfprintf(fid,'\n Blending time increases by factor of %.2f ',t_inc_factor); 
mfprintf(fid,'\n\n\n OUTPUT Ex6.1.c');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n The new stirrer speed = %.2f sec-1 or %.0f rpm',n2,rotaional_speed); 
mfprintf(fid,'\n The new blending time  for Da/Dt ratio of 0.5 = %.1f sec',t2);
mclose(fid);
//======================================================END OF PROGRAM=================================================
//Disclaimer: In Ex6.1.c there is an arithematic error in the value of D_a/D_t. The value of  D_a/D_t should be 11.4 instead of the value reported in the textbook for D_a/D_t=11.1.
