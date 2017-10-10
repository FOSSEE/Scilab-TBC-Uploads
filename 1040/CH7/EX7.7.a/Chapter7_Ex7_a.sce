//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-7 Ex7.7.a Pg No.304
//Title:Apparent value of kLa and regime of operation
//======================================================================================================================
clear
clc
//INPUT
Vol_reactor=35;//Volume of reactor(L)
No_reactor=3;//No. of reactor
T_C=155;//Operating Temperature (°C)
T_ref=273;//Reference Temperature (°C)
T_K= T_C+T_ref;//Operating Temperature (K)
P=8.2;//Operating Pressure (atm)
X_conversion=9.5*10^(-2);//Conversion
S=73*10^(-2);//Selectivity
M_cyclohexane=84.16;//Molecular weight of cyclohexane
F_cyclohexane=100;//Feed rate of cyclohexane (L/hr)
F_air=9.9;//Feed rate of air (nm3/hr)
f_O2_air=0.21;//Fraction of O2 in air
V_ref=22400;//Reference volume at STP(cm3/mol)
y_O2=0.002;//O2 in vent gas
f_O2_consumed=0.99;//Fraction of O2 Consumed
rho_cyclohexane=0.779;//Density of cyclohexane at 20 (°C)
main_pdt_ratio=3/2;
by_pdt_ratio=(1-main_pdt_ratio);
stoi_rxn_O2=[0.5 1];
rho_M=0.650;//Density of Cyclohexane at 155 (°C)
P_dash=5.8;//Vapour Pressure of cyclohexane at 155 (°C)
D_reactor=30;//Diameter of reactor (cm)
h_reactor=50;//Height of reactor (cm)
myu_20=0.98;//(cp) Viscosity at 20(°C) 
myu_155=0.2// (cp) Viscosity at 155(°C)

//CALCULATION
F_O2=(F_air*10^(6)*f_O2_air)/(3600*V_ref);
delta_N_O2=F_O2*f_O2_consumed;
F_C6=(F_cyclohexane*10^(3)*rho_cyclohexane)/(3600*M_cyclohexane)
F_prdts=F_C6*X_conversion*S;
F_O2_prdts=F_prdts*(main_pdt_ratio*stoi_rxn_O2(1)+by_pdt_ratio*stoi_rxn_O2(2));
F_O2_remain_used=delta_N_O2-F_O2_prdts;
F_O2_prdts_conver=F_O2_prdts/(F_C6*X_conversion*S);
F_O2_remain_used_conver=F_O2_remain_used/(F_C6*X_conversion*(1-S));
X_O2=10^(0.366*log10(T_K)-3.8385);//O2 solubility from Wild et al. [37]:
PO2_plus_PN2=P-P_dash;
P_O2=y_O2*PO2_plus_PN2;
x_O2=P_O2*X_O2;//Mol fraction of O2
C_M=rho_M*10^(3)/M_cyclohexane;
C_O2_star=C_M*x_O2;

//Assume each reactor has 30 L solution
V_soln_n=30;//Volume of solution in each reactor 
apparent_kLa=(delta_N_O2)/(V_soln_n*No_reactor*C_O2_star);
F_total=(F_air*10^(6)/3600)*(T_K/T_ref)*(8.2/2.4)*(1/8.2);//The total vapor flow is 8.2/2.4 times the air flow
CSA_reactor=%pi*(D_reactor^2)/4;
u_g=F_total/(CSA_reactor*No_reactor);
//Calculation for predicted value of kLa
kLa_20=0.16;//From Figure 7.16, for O2–C6H12 at 20 (°C), 2 cm/sec, 5 kW/m3
T_data=20+T_ref;//Temperature at which data is taken from the table
D_155_by_D_20=(T_K/T_data)*(myu_20/myu_155);
Predicted_kLa=kLa_20*(D_155_by_D_20^(0.5))*(u_g/2)^(0.5);

//OUTPUT
mprintf('\nThe value of apparent kLa: %0.1f (sec-1)',apparent_kLa);
mprintf('\n The value of predicted kLa: %0.2f (sec-1)',Predicted_kLa);
if (apparent_kLa>Predicted_kLa)
     mprintf('\nThe absorption of oxygen is greatly enhanced by chemical reactions in the liquid film')
     mprintf('\nThe kinetics can be approximated by a first-order expression,the reaction would fall in the pseudo-first-order regime,\nwhere the rate varies with the square root of the oxygen diffusivity and the rate constant.')
end
fid= mopen('.\Chapter7_Ex7_a_Output.txt','w');
mfprintf(fid,'\nThe value of apparent kLa: %0.1f (sec-1)',apparent_kLa);
mfprintf(fid,'\n The value of predicted kLa: %0.2f (sec-1)',Predicted_kLa);
if (apparent_kLa>Predicted_kLa)
     mfprintf(fid,'\nThe absorption of oxygen is greatly enhanced by chemical reactions in the liquid film')
     mfprintf(fid,'\nThe kinetics can be approximated by a first-order expression,the reaction would fall in the pseudo-first-order regime,\nwhere the rate varies with the square root of the oxygen diffusivity and the rate constant.')
end
mclose('all');
//==========================================================END OF PROGRAM===============================================


