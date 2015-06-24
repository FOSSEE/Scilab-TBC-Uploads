//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436
//Chapter-7 Ex7.3 Pg No.274
//Title:Overall mass transfer coefficient and percent resistance 
//===========================================================================================================
clear
clc
//INPUT
k2=8500;//(L/mol sec) at 25 °C
kg_a= 7.4 //(mol/hr ft3 atm)
k_star_L_a=32;//(hr-1)
a=34;//(ft2/ft3)
H_CO2=1.9*10^(3);//(atm/m f) Henry's Constant
D_CO2=2*10^(-5);//(cm2/sec)
D_OH=2.8*10^(-5);//(cm2/sec)
P_CO2_in=0.04;//(atm)
P_CO2_out=0.004;//(atm)
Caustic_conc=[0.5 0.75];//Cocentration on both the ends of the column bottom and top(M)
n=2;
M_H2O=18;//Molecular Weight
H_H2O=62.3;//(g/ft3) Henry's Constant
H_H2O_dash=H_H2O/M_H2O;//Henry's Constant converted into consistent units with kg_a


//CALCULATION
C_Ai=P_CO2_in/H_CO2*(1000/18);
k_star_L=(k_star_L_a/(a*3600))*(30.5);
H_CO2_dash=H_CO2*(1/H_H2O_dash);
for i=1:2
Phi_a(i)=(1+(Caustic_conc(i)/(n*C_Ai))*(D_OH/D_CO2));//Refer equation7.51
sqrt_M(i)=sqrt(k2*Caustic_conc(i)*D_CO2)/k_star_L;
Phi(i)=sqrt_M(i);//Refer fig 7.7
K_ga(i)=(1/((1/kg_a)+(H_CO2_dash/(Phi(i)*k_star_L_a))));//Overall Mass transfer coefficient
Percent_resis_gasfilm(i)=(K_ga(i)/kg_a)*100;
end

//OUTPUT
mprintf('\n \t\t\t\t\t\t\tTop\t   Bottom');
mprintf('\n Overall mass transfer coefficient (mol/hr ft3 atm): %0.1f\t %0.1f',K_ga(1),K_ga(2));
mprintf('\n Percenage resistance in gas film:                 %0.0f%%\t       %0.0f%% ',Percent_resis_gasfilm(1) ,Percent_resis_gasfilm(2) );

//FILE OUTPUT
fid= mopen('.\Chapter7-Ex3-Output.txt','w');
mfprintf(fid,'\n \t\t\t\t\t\t\tTop\t   Bottom');
mfprintf(fid,'\n Overall mass transfer coefficient (mol/hr ft3 atm): %0.1f\t %0.1f',K_ga(1),K_ga(2));
mfprintf(fid,'\n Percenage resistance in gas film:                 %0.0f%%\t      %0.0f%% ',Percent_resis_gasfilm(1) ,Percent_resis_gasfilm(2) );
mclose(fid);
//========================================================================END OF PROGRAM=================================================================================














