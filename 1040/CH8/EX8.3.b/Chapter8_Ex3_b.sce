//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-8 Ex8.3.b Pg No.348
//Title:Internal effectiveness factor based diffusion
//===========================================================================================================

clear
clc
//INPUT
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

//CALCULATION
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

//OUTPUT
//Console Output
mprintf('\n\tThe internal effectiveness factor based on Sulphur and Hydrogen diffusion are %f and %f respectively',phi_app_S,phi_app_H2);
mprintf('\n\tThe internal effectiveness factor based on Hydrogen is negligible');
//File Output
fid = mopen('E:\Chapter8_Ex3_b_Output.txt', 'w');
mfprintf(fid,'\n\tThe internal effectiveness factor based on Sulphur and Hydrogen diffusion are %f and %f respectively',phi_app_S,phi_app_H2);
mfprintf(fid,'\n\tThe internal effectiveness factor based on Hydrogen is negligible')
mclose(fid);

//============================================END OF PROGRAM==================================================
