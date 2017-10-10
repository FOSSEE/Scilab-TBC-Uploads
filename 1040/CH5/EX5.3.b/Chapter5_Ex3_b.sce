//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-5 Ex5.3.b Pg No. 209
//Title:Peak Radial average bed temperature for velocities
//===========================================================================================================
clear
clc
format(16)
//INPUT
k_s= 8*10^(-4);//(cal/sec cm°C)
M_air_avg=29.24;//
Cp_air_mol=7.91;// cal/mol°C;
Cp_air_g=Cp_air_mol/M_air_avg;//cal/g°C
dp=0.4;//Size of the catalyst pellet (cm)
D=3.8;//Diameter of tube (cm)
R_pellet=D/2;//Radius
f_EO=0.7;//Fraction  of ethylene forming ethylene oxide 
f_CO2_H2O=1-f_EO;//Fraction  of ethylene forming CO2 and H2O
rho_p=2.5;//Density of catalyst particle (g/cm3)
P=5;//System Pressure (atm)
T_C=230;//System Temperature (°C)
T=T_C+273;//System Temperature (K)
u_ft=[1.5 3];//Velocity (ft/s)
myu=0.026*(10^(-2));//Viscosity of air (Poise)
M_wt=[28 32 44 28];//Molecular weight
M_fraction=[0.04 0.07 0.06 0.83];
del_H_rxn=[-29.9 -317];//Heat of reaction(kcal/mol) 
E=18*1000;//Activation Energy (cal)
R=1.987;//Gas Constant (cal/K.mol)  
U=[0.00275 0.00431 ];//Overall heat transfer coefficients calculated in Ex5.3.a

//CALCULATION
minus_delH=f_EO*(-del_H_rxn(1))+f_CO2_H2O*(-del_H_rxn(2));
T_max=T+20;
del_Tc= R*(T_max)^2/E;
T_new=250 +273;
X_E=0.1;
k250_by_k230=exp((E/R)*((1/T)-(1/T_new)));
P_E=P*(1-X_E)*M_fraction(1);
P_O2=P*(1-f_EO*X_E)*M_fraction(2);
P_CO2=P*(1+f_CO2_H2O*X_E)*M_fraction(3);
r=k250_by_k230*((0.076*P_E*P_O2)/(1+2*P_E+15*P_CO2));
Q_dash=r*minus_delH*10^3/3600;
epsilon=0.4;
rho_bed=rho_p*(1-0.4);
A_percm3=4/D;
Q=(Q_dash*rho_bed)
for i=1:2
    delta_T(i)=(Q/A_percm3)*(1/U(i));
end

//OUTPUT
//Console Output
mprintf('\nThe Peak Radial average bed temperature for given Velocities' )
mprintf('\n==========================================================')
mprintf('\n  u(velocity)     delta_T')
mprintf('\n  (ft/s)           (°C)')
mprintf('\n==========================================================')
for i=1:2
    mprintf('\n  %0.1f \t  \t  %0.0f',u_ft(i),delta_T(i))
end

//File Output
fid= mopen('.\Chapter5_Ex3_b_Output.txt','w');
mfprintf(fid,'\nThe Peak Radial average bed temperature for given Velocities' );
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\n  u(velocity)     delta_T');
mfprintf(fid,'\n  (ft/s)           (°C)');
mfprintf(fid,'\n==========================================================');
for i=1:2
    mfprintf(fid,'\n  %0.1f \t  \t  %0.0f',u_ft(i),delta_T(i));
end
mclose(fid);
//======================================================END OF PROGRAM========================================

