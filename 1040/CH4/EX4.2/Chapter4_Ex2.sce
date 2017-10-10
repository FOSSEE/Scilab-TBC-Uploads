//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-4 Ex4.2 Pg No. 140
//Title:Effective diffusivity of O2 in air
//============================================================================================================
clear
clc
// COMMON INPUT
S_g=150;//Total surface per gram (m2/g)
V_g=0.45;//Pore volume per gram (cm3/g)
V_i=0.30;//Micropore volume per gram (cm3/g)
V_a=0.15;// Macropore volume per gram (cm3/g)
rho_P=1.2;//Density of particle (g/cm3)
tau=2.5;// Tortusity
r_bar_i=40*(10^(-8));//Micropore radius
r_bar_a=2000*(10^(-8));//Macropore radius
D_AB=0.49;//For N2–O2 at 1 atm (cm2/s)
M_O2=32;//Molecular weight of O2
T=493;//Opereating Temperature (K)



//CALCULATION (Ex4.2.a)
Epsilon=V_g*rho_P;
D_K_i=9700*(r_bar_i)*sqrt(T/M_O2);//Knudsen flow for micropore
D_Pore_i=1/((1/D_K_i)+(1/D_AB))
D_K_a=9700*(r_bar_a)*sqrt(T/M_O2);
D_Pore_a=1/((1/D_K_a)+(1/D_AB));////Knudsen flow for macropore
D_Pore_Avg=(V_i*D_Pore_i+V_a*D_Pore_a)/(V_i+V_a);
D_e=Epsilon*D_Pore_Avg/tau;

//CALCULATION (Ex4.2.b)
Epsilon=V_g*rho_P;
r_bar=2*V_g/(S_g*10^4);
D_K=9700*(r_bar)*sqrt(T/M_O2);//Knudsen Flow
D_Pore=1/((1/D_K)+(1/D_AB));
tau=D_Pore*Epsilon/D_e;

//OUTPUT
mprintf('\n OUTPUT Ex4.2.a');
mprintf('\n=================================================');
mprintf('\n The effective diffusivity of O2 in air = %0.2e cm2/s',D_e);  
mprintf('\n\n OUTPUT Ex4.2.b');
mprintf('\n=================================================');
mprintf('\n The calculated surface mean pore radius = %.0e cm',r_bar);       
mprintf('\n The predicted pore diffusivity = %0.2e cm2/sec',D_Pore);          
mprintf('\n The corresponding tortusity = %0.2f',tau);

//FILE OUTPUT
fid= mopen('.\Chapter4-Ex2-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex4.2.a');
mfprintf(fid,'\n=================================================');
mfprintf(fid,'\n The effective diffusivity of O2 in air = %0.2e cm2/s',D_e);  
mfprintf(fid,'\n\n OUTPUT Ex4.2.b');
mfprintf(fid,'\n=================================================');
mfprintf(fid,'\n The calculated surface mean pore radius = %.0e cm',r_bar);       
mfprintf(fid,'\n The predicted pore diffusivity = %0.2e cm2/sec',D_Pore);          
mfprintf(fid,'\n The corresponding tortusity = %0.2f',tau);
mclose(fid);


//======================================================END OF PROGRAM========================================
