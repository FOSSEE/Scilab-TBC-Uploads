//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436. 
//Chapter-1 Ex3.1 Pg No.84
//Title:Time to reach desired conversion for bimolecular batch reaction
//========================================================================================
clear
clc
//INPUT
C_A0=1;//Assuming 1mol basis for the limiting reactant
C_B0_old=1.02;//2% Excess of reactant B is supplied
R_old=C_B0_old/C_A0;//Refer equation 3.7 Pg No.
X_A=0.995;// Conversion interms of limiting reactant
t_old=6.5;//Time required for the given conversion (hr)
C_B0_new=1.05;//5% Excess of reactant B
R_new=C_B0_new/C_A0;//Refer equation 3.7 Pg No.83

//CALCULATION
k=(log((R_old-X_A)/(R_old*(1-X_A)))/((R_old-1)*t_old *C_A0));
t_new=log((R_new-X_A)/(R_new*(1-X_A)))/((R_new-1)*k*C_A0);

//OUTPUT
mprintf('\nTime required to achieve required conversion for 5%% excess of B= %f hr',t_new);

//FILE OUTPUT
fid=mopen('.\Chapter3-Ex1-Output.txt','w');
mfprintf(fid,'\nTime required to achieve required conversion for 5%% excess of B= %f hr',t_new);
mclose(fid);
//=================================================END OF PROGRAM==================================
