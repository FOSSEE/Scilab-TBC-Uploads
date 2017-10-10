//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-8 Ex8.3 Pg No.
//Title:Apparent rate constant and consistency
//===========================================================================================================

clear
clc
// COMMON INPUT
LHSV_inv=[0.75 1.39];//Refer table 8.2 Test Results (Liquid Hourly Space Velocity)
X_S=[0.77 0.83];//Refer table 8.2 Percentage Sulphur removal
T_C=365;//Operating Temperature (°C)
rho=0.64;//Density of Sulphur Compounds (g/cm3)
myu=0.5;//Viscosity(cP)
T_K=273+T_C;//Temperature (K)
M_B=374;//For CHS compounds(Refer table8.1)
V_A=M_B/0.6;//Molar volume
Chi=1;
Epsilon_by_tau=0.1;
D_pore_by_D_bulk=0.5;//Hinderance due to large molecules
epsilon_holdup=0.6;// Assuming bed consists 60% catalyst
k_app_rhob=1.96//Refer Ex8.3.a Run 1
eta=0.74;
R=0.095;//Size of particle
C_H2_incorrect=0.48;//Solubility of H2 at 56 atm
P_incorrect=56;//Incorrect Pressure
P_correct=65;//Correct Pressure
m_feed=640;// Concentration of Feed (g/L);
percent_S=2.04;//Percentage of Sulphur
MW_S=32;//Molecular weight of Sulphur
N_H2=1.5;//Moles of H2
V_H2=14.3;//Solubility of Hydrogen

//CALCULATION (Ex8.3.a)
for i=1:2
    kapp_rhob(i)=log((1/(1-X_S(i))))*(1/LHSV_inv(i));//Refer Equation 8.21
    
end
L=LHSV_inv(2)/LHSV_inv(1);
kapp_ratio=kapp_rhob(1)/kapp_rhob(2);
n=log10(kapp_ratio)/log10(L);

//CALCULATION (Ex8.3.b)
//FOR SULPHUR
D_CHS=(7.4*(10^(-8))*(Chi*M_B)^(0.5)*T_K)/(myu*(V_A)^0.6);
D_e_S=Epsilon_by_tau*D_pore_by_D_bulk*D_CHS;
epsilon_holdup=0.6;// Assuming bed consists 60% catalyst
k_app_S=k_app_rhob/(3600*epsilon_holdup);//Refer Ex8.3.a
phi_app_S=R*(k_app_S/D_e_S)^(0.5);
//FOR H2
C_H2_corrected=C_H2_incorrect*(P_correct/P_incorrect);
C_S_initial=m_feed*percent_S*10^(-2)/MW_S;
Initial_rate=k_app_rhob*C_S_initial;
k_app_H2=N_H2*Initial_rate/(3600*epsilon_holdup*C_H2_corrected);
//Assume D_H2 is three times the value given by the Wilke–Chang Equation
D_H2=3*(7.4*(10^(-8))*(Chi*M_B)^(0.5)*T_K)/(myu*(V_H2)^0.6);
D_e_H2=Epsilon_by_tau*D_H2;
phi_app_H2=R*(k_app_H2/D_e_H2)^(0.5);

//OUTPUT (Ex8.3.a)
mprintf('\n OUTPUT Ex8.3.a');
mprintf('\n==========================================================');
mprintf('\n\tThe Apparent rate constants are \n\t Run1 %0.2f hr-1 \n\t Run2 %0.2f hr-1  ',kapp_rhob(1),kapp_rhob(2))
mprintf('\n\tThe exponent value = %0.1f hence the difference is not consistent with repect to equations (8.23) and (8.24) for the  apparent rate constants obtained',n);   
mprintf('\n\tThe error may be due to error in assuming a first order reaction');

//OUTPUT (Ex8.3.b)
mprintf('\n\n\n OUTPUT Ex8.3.b');
mprintf('\n==========================================================');
mprintf('\n\tThe internal effectiveness factor based on Sulphur and Hydrogen diffusion are %0.2f and %0.2f respectively',phi_app_S,phi_app_H2);
mprintf('\n\tThe internal effectiveness factor based on Hydrogen is negligible');

//FILE OUTPUT
fid= mopen('.\Chapter8-Ex3-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex8.3.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n\tThe Apparent rate constants are \n\t Run1 %0.2f hr-1 \n\t Run2 %0.2f hr-1  ',kapp_rhob(1),kapp_rhob(2))
mfprintf(fid,'\n\tThe exponent value = %0.1f hence the difference is not consistent with repect to equations (8.23) and (8.24)for the  apparent rate constants obtained',n);   
mfprintf(fid,'\n\tThe error may be due to error in assuming a first order reaction');
mfprintf(fid,'\n\n\n OUTPUT Ex8.3.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n\tThe internal effectiveness factor based on Sulphur and Hydrogen diffusion are %0.2f and %0.2f respectively',phi_app_S,phi_app_H2);
mfprintf(fid,'\n\tThe internal effectiveness factor based on Hydrogen is negligible');
mclose(fid);
//============================================END OF PROGRAM=================================================

