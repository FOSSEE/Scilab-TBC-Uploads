//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436
//Chapter-4 Ex4.2.b  Pg No.140
//Title:Computation of surface mean pore radius, Diffusivity and tortusity
//===========================================================================================================
clear
clc
//INPUT
S_g=150;//Total surface per gram (m2/g)
V_g=0.45;//Pore volume per gram (cm3/g)
V_i=0.30;//Micropore volume per gram (cm3/g)
V_a=0.15;// Macropore volume per gram (cm3/g)
rho_P=1.2;//Density of particle (g/cm3)
tau=2.5;
r_bar_i=40*(10^(-8));//Micropore radius
r_bar_a=2000*(10^(-8));//Macropore radius
D_AB=0.49;//For N2–O2 at 1 atm
M_O2=32;//Molecular weight of O2
T=493;//Opereating Temperature
D_e=0.0235;//Refer Ex4.2a (cm2/s) Pg. No. 141

//CALCULATION
Epsilon=V_g*rho_P;
r_bar=2*V_g/(S_g*10^4);
D_K=9700*(r_bar)*sqrt(T/M_O2);//Knudsen Flow
D_Pore=1/((1/D_K)+(1/D_AB));
tau=D_Pore*Epsilon/D_e;

//OUTPUT
//Console Output
mprintf('\n The calculated surface mean pore radius = %.0e cm',r_bar);       
mprintf('\n The predicted pore diffusivity = %0.2e cm2/sec',D_Pore);          
mprintf('\n The corresponding tortusity = %0.2f',tau);          
//File Output
fid= mopen('.\Chapter4_Ex2_b_Output.txt','w');       
mfprintf(fid,'\n The calculated surface mean pore radius = %.0e cm',r_bar);
mfprintf(fid,'\n The predicted pore diffusivity = %0.2e cm2/sec',D_Pore);
mfprintf(fid,'\n The corresponding tortusity = %0.2f',tau);
mclose(fid);
//===========================================END OF PROGRAM==================================================
