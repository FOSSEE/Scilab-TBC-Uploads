//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-4 Ex4.3 Pg No. 154
//Title:Influence of Pore diffusion over rate
//============================================================================================================
clear
clc
//INPUT
d_p=1/4;//Spherical Catalyst pellet size(inch)
k=[7.6*10^-3 14*10^-3];//Reaction rates (mol/hr)
f_A=[0.1 0.2];//Feed fraction of reactant A
D_e=0.0085;// Diffusivity of A (cm2/s)
rho_p=1.4 ;// Density of catalyst particle(g/cm3)
V_ref=22400;// reference volume(cm3)
T_ref=273;//Reference Temperature (K)
P_ref=1;//Reference Pressure (atm)
P=1.2;//Operating Pressure (atm)
T_C=150;
T=T_C+273;//Operating Temperature (K)

//CALCULATION
//For 10% of A
C_A(1)=f_A(1)*T_ref*P_ref/(V_ref*T*P);
R=d_p*2.54/2;
k_app(1)=k(1)*rho_p/(3600*C_A(1));//Refer equation 4.53 Pg. No. 153
phi_app(1)=R*sqrt(k_app(1)/D_e);//Refer equation 4.55 Pg. No. 155 
C_A(2)=f_A(2)*T_ref*P_ref/(V_ref*T*P);
//If C_A is doubled the order is quite close to 1,from the Figure 4.8 Pg. No. 148, refer value of effectiveness
eta_graph=0.42;
k_app(2)=k_app(1)/eta_graph;
phi_app(2)=R*sqrt(k_app(2)/D_e);
eta_calc=(3/phi_app(2))*((1/tanh(phi_app(2)))-(1/phi_app(2)));
eff_rate=(1-eta_graph)*100;

//OUTPUT
mprintf('\n The effectiveness from graph = %0.2f \n The calculated effectiveness = %0.2f',eta_graph,eta_calc);
mprintf('\n The pore diffusion decreased the rate by %.0f%%',eff_rate);

//FILE OUTPUT
fid= mopen('.\Chapter4-Ex3-Output.txt','w');
mfprintf(fid,'\n The effectiveness from graph = %0.2f \n The calculated effectiveness = %0.2f',eta_graph,eta_calc);
mfprintf(fid,'\n The pore diffusion decreased the rate by %.0f%%',eff_rate);
mclose(fid);
//==============================================================END OF PROGRAM===============================
