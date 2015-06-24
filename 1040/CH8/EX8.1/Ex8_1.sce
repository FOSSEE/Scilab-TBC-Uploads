//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-8 Ex8.1 Pg No. 323
//Title:Gas absorption coefficient and fraction of overall resistance
//============================================================================================================
clear
clc
//INPUT
rho_oil=0.8;//Density of oil (g/cm3)
IV_init=130;//Iodine Value initial
IV_final=80;//Iodine Value final
P=45;//Pressure of system (psig)
T_C=204;// Temperature of system (°C)
t_run=[26 17];//Time required for hydrogenation run 2;
frac_Ni=[0.005 0.0125]//Fraction of Nickel used for different run

//CALCULATION
r_ave=((IV_init -IV_final))*(0.039*rho_oil)*(1/60).*(t_run.^(-1));//Relationship between Iodine value and Hydrogen consumption (mol- H2/ L sec)
H_H2= 4*10^(-3);//Solubility of H2 from Fig8.4 Pg No.322
P_H2=(P/14.7)+1;//Absolute Pressure in (atm)
C_H2=P_H2 *H_H2;
Ci_by_r=C_H2.*(r_ave.^(-1));
Coeff_R_cat=frac_Ni.^(-1);
equation=[ones(1,2);Coeff_R_cat]//Simultaneous Equation
Resistance= Ci_by_r*inv(equation);
Gas_abs_resistance=(Resistance(1)*100 ).*(Ci_by_r.^(-1));
Gas_abs_coefficient=(1/Resistance(1));

//OUTPUT
mprintf('\nThe Gas absorption coefficient is %f sec-1',Gas_abs_coefficient);
mprintf('\n The Fraction of overall resistance due to gas absorption\n  Run 1 %0.0f%% \n  Run 2 %0.0f%%',Gas_abs_resistance(1),Gas_abs_resistance(2));

//FILE OUTPUT
fid= mopen('.\Chapter8-Ex1-Output.txt','w');
mfprintf(fid,'\nThe Gas absorption coefficient is %f sec-1',Gas_abs_coefficient);
mfprintf(fid,'\n The Fraction of overall resistance due to gas absorption\n  Run 1 %0.0f%% \n  Run 2 %0.0f%%',Gas_abs_resistance(1),Gas_abs_resistance(2));
mclose(fid);
//=======================================================END OF PROGRAM=================================================
