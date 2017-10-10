//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-7 Ex7.6.c Pg No.300
//Title:k_L_a and the average dissolved oxygen concentration.
//======================================================================================================================
clear
clc
//INPUT
P_aerated=203;//Total power of agitator when aerated (kW) calculated in Ex7.6.b
V=151;//Volume of solution calculated Ex7.6.a (m3)
ug_sup1=3*(10^(-2));//based on 30(°C) and 1 atm.
Press_top=1;//Pressure at the top of the vessel (atm) 
Press_bottom=2;//From Ex7.6.c
ug_sup2=ug_sup1/Press_bottom;// at 2atm superficial velocity (cm/sec)
ug_ave=(ug_sup1+ug_sup2)/2;//Average superficial velocity (cm/sec)
depth=12;//Depth of reactor (m) 
one_atm_water=10.3;//1 atm pressure corresponds to 10.3 (m) height of water
k_H_O2=5.2*10^(4)// Henery's law constant  for O2 in water for O2 (atm/mol fraction)
r_O2_peak=45*(10^(-3));//Flow rate of O2 at peak demand 
M_O2=32;//Molecular weight of O2
M_H2O=18;//Molecular weight of water

//CALCULATION
P_by_V_ave=P_aerated/V;
kLa_O2_sulfite=0.32;//Using figure7.16 based on ave(P/V) value and ug_average value
kLa_soln=0.7*kLa_O2_sulfite;//kLa for this solution is 70% of the value for oxygen absorption in sodium sulfite (sec-1)
y_O2=0.086;//If gas is backmixed
depth_ave=depth/2;
Press_ave=(Press_top+(depth_ave/one_atm_water));//Pressure at average depth (atm)
C_O2_star=(Press_ave*y_O2/k_H_O2)*(1000/M_H2O);//Conversion (mol/L)
r_conv=r_O2_peak/3600;//Rate at peak O2 demand (mol/L sec)
C_ave=(C_O2_star-(r_conv/kLa_soln))
C_ave_conv=C_ave*M_O2*1000;//Converted value of O2 concentration in(mg/L)
//OUTPUT
//Console Output
mprintf('\n\tThe calculated value of kLa (mass transfer coefficient) of solution:%0.2f (sec-1)',kLa_soln);
mprintf('\n\tThe calculated value of average dissolved O2 concentration: %0.2f (mg/L)',C_ave_conv);
//File Output
fid= mopen('.\Chapter7_Ex6_c_Output.txt','w');
mfprintf(fid,'\n\tThe calculated value of kLa (mass transfer coefficient) of solution:%0.2f (sec-1)',kLa_soln);
mfprintf(fid,'\n\tThe calculated value of average dissolved O2 concentration: %0.2f (mg/L)',C_ave_conv);
mclose('all');
//=================================================END OF PROGRAM===================================================================
// Disclaimer :The numerically calculated value of dissolved O2 concentration is 2.87 mg/L not 2.8 mg/L as mentioned in the textbook
