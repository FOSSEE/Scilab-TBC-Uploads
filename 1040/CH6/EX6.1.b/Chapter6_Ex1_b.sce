//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.1.b Pg No.236
//Title:Speed of stirrer and  increase in blending time
//====================================================================================================================
clear
clc
//INPUT
n=5;
P_by_V_limit=10;//Pressure per unit volume (HP/1000gal)
P_by_V1=59;//Pressure per unit volume from Ex6.1.a
n1=5;

//CALCULATION
n_limit=(P_by_V_limit/P_by_V1)^(1/3) *n1;//Pressure per unit vol propotional to n3
t_inc_factor=n1/n_limit;//t inversely propotional to n
rotational_speed=n_limit*60;//Speed in rpm

//OUTPUT
//Console Output
mprintf('\n The speed of the stirrer  = %.2f sec-1 or %.0f rpm',n_limit,rotational_speed);
mprintf('\n Blending time increases by factor of %.2f ',t_inc_factor); 

//File Output
fid= mopen('.\Chapter6_Ex1_b_Output.txt','w');
mfprintf(fid,'\n The speed of the stirrer  = %.2f sec-1 or %.0f rpm',n_limit,rotational_speed);
mfprintf(fid,'\n Blending time increases by factor of %.2f ',t_inc_factor); 
mclose(fid);
//==================================================END OF PROGRAM===================================================


