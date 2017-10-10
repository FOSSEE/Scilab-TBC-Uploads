//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-4 Ex4.1.b Pg No. 135
//Title: Computation of tortuosity in catalyst pellet
//===========================================================================================================
clear
clc
//INPUT
S_g=235;//Total surface per gram (m2/g)
V_g=0.29;//Pore volume per gram (cm3/g)
D_AB=0.73;// at 1atm and 298K
rho_p=1.41;//Density of particle (g/cm3)
D_He=0.0065;//Effective diffusivity of He (cm2/sec)
T_ref=293;//Reference temperature (K)
M_He=4;//Molecular weight of He
T=298;//Operating temperature

//CALCULATION
r_bar=2*V_g /(S_g *(10^4));
D_K=9700*(r_bar)*(T_ref/M_He)^(0.5);//Knudsen flow
D_AB1=D_AB*(293/298)^(1.7)// at 1.5 atm and 293K
D_pore=1/((1/D_K)+(1/D_AB1));//pore diffusion
Epsilon=V_g*rho_p;
tau=(D_pore*Epsilon)/D_He;//Tortusity

//OUTPUT
//Console Output
mprintf('\n The tortusity value = %0.2f',tau);   

//File Output
fid= mopen('.\Chapter4_Ex1_b_Output.txt','w');
mfprintf(fid,'\n The tortusity value = %0.2f',tau);
mclose(fid);
//========================================================END OF PROGRAM=================================
