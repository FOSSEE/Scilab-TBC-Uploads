//Harriot P,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-7 Ex7.6 Pg No.300
//Title:Fraction of O2,Power of agitator, k_L_a and average dissolved oxygen concentration.
//======================================================================================================================
clear
clc
// COMMON INPUT
Vol_reactor=200;//Volume of reactor (m3)
D=4;//Diameter of reactor (m)
depth=12;//Depth of reactor (m) 
u_g=3;//Superficial velocity (cm/sec)
T_C=30;//Temperature (°C)
T_K=273+T_C;//Temperature  (K)
f_O2=0.21;//Fraction of O2 in air
myu_soln=1.5*(10^(-3));//Viscosity of solution (Pa sec)
R=0.08206;//Gas constant (m3 atm/ K kmol)
r_O2_peak=45*(10^(-3));//Flow rate of O2 at peak demand 
Da_by_Dt=(1/3);
Da=1.333;//(m)
N=120;//(rpm)
N_conv=(N/60);//(sec-1)
Press_top=1;//Pressure at the top of the vessel (atm) 
rho=1000;//Density of water (kg/m3)
ug_sup1=3*(10^(-2));//based on 30(°C) and 1 (atm)
V=151;//Volume of solution calculated Ex7.6.a (m3)
ug_sup1=3*(10^(-2));//based on 30(°C) and 1 atm.
Press_top=1;//Pressure at the top of the vessel (atm) 
Press_bottom=2;//From Ex7.6.c
ug_sup2=ug_sup1/Press_bottom;// at 2atm superficial velocity (cm/sec)
ug_ave=(ug_sup1+ug_sup2)/2;//Average superficial velocity (cm/sec)
depth=12;//Depth of reactor (m) 
one_atm_water=10.3;//1 atm pressure corresponds to 10.3 (m) height of water
k_H_O2=5.2*10^(4)// Henery's law constant  for O2 in water for O2 (atm/mol fraction) 
M_O2=32;//Molecular weight of O2
M_H2O=18;//Molecular weight of water
C_O2_critical=1*10^(-3);//Critical O2 Concentration (g/L)
percent_reduction=40/100;//Mass transfer coefficient in the upper region of the reactor is 40% less than the average
kLa_soln=0.22;//Value calculated in Ex7.6.d 
r_conv=1.25*10^(-5);//Rate at peak O2 demand (mol/L sec)
depth=12;//Depth of reactor (m) 


//CALCULATION (Ex7.6.a )
S=%pi*(D^2)/4;//Cross section area (m2)
V=S*depth;//Volume of solution(m3)
F_air=(S*u_g*(10^(-2))*3600)/(R*(10^(-3))*T_K);
F_O2=f_O2*F_air;//Feed rate of O2 (mol/hr)
F_O2_used=r_O2_peak*V*(10^(3));//O2 used for aerobic fermentation (mol/hr)
F_O2_left=F_O2-F_O2_used;//O2 left after aerobic fermentation(mol/hr)
f_O2_exitgas=F_O2_left/F_air;//Fraction of O2 in exit gas
Percent_O2_exitgas=(f_O2_exitgas)*(100);
Frac_O2_used=((f_O2-f_O2_exitgas)/f_O2);

//CALCULATION (Ex7.6.b )
Re=(rho*N_conv*Da^2)/myu_soln;
N_p=6;//For a standard turbine 
N_p_pitched=1.7;//For a pitched-blade turbine
P0=(N_p*rho*(N_conv^3)*(Da^5))*(10^(-3));//Refer equation 7.73 (kW)
//If the turbine is 2 m from the bottom, or 10 m below the surface,the pressure is about 2 atm since 1atm= 10.3 m water
Press_bottom=2
ug_sup2=ug_sup1/Press_bottom;
Q=ug_sup2*S;
N_Ae=Q/(N_conv*(Da^3));
Pg_by_P0=0.55;//From figure 7.15 based on N_Ae value calculated
Pg=Pg_by_P0*P0;//When aerated
P0_pitched=(N_p_pitched/N_p)*P0;
Pg_by_P0_pitched=0.8;//Solution reaching the upper stirrers is already aerated
Pg_pitched=Pg_by_P0_pitched*P0_pitched;
Tot_Pow_no_air=P0+Press_bottom*P0_pitched;//Total power when no air is presented
Tot_Pow_aerated=Pg+Press_bottom*Pg_pitched;//Total power when it is aerated

//CALCULATION (Ex7.6.c )
P_by_V_ave=Tot_Pow_aerated/V;
kLa_O2_sulfite=0.32;//Using figure7.16 based on ave(P/V) value and ug_average value
kLa_soln=0.7*kLa_O2_sulfite;//kLa for this solution is 70% of the value for oxygen absorption in sodium sulfite (sec-1)
y_O2=0.086;//If gas is backmixed
depth_ave=depth/2;
Press_ave=(Press_top+(depth_ave/one_atm_water));//Pressure at average depth (atm)
C_O2_star=(Press_ave*y_O2/k_H_O2)*(1000/M_H2O);//Conversion (mol/L)
r_conv=r_O2_peak/3600;//Rate at peak O2 demand (mol/L sec)
C_ave=(C_O2_star-(r_conv/kLa_soln))
C_ave_conv=C_ave*M_O2*1000;//Converted value of O2 concentration in(mg/L)

//CALCULATION (Ex7.6.d)
depth_ave=depth/2;
Press_ave=(Press_top+(depth_ave/one_atm_water));//Pressure at average depth (atm)
kLa_soln_reduced=kLa_soln*(1-percent_reduction);
C_star_minus_C=r_conv/kLa_soln_reduced;
C_O2_new=(C_O2_star-(C_star_minus_C));
C_O2_new_conv=C_O2_new*M_O2*1000;//Converted value of O2 concentration in(mg/L)
C_O2_star_new=C_O2_star/Press_ave;

//OUTPUT (Ex7.6.a)
mprintf('\n OUTPUT Ex7.6.a');
mprintf('\n==========================================================');
mprintf('\nAt the peak demand, fraction of the oxygen supplied = %.3f ',Frac_O2_used);

//OUTPUT(Ex7.6.b )
mprintf('\n\n\n OUTPUT Ex7.6.b');
mprintf('\n==========================================================');
mprintf('\nThe total power required for the agitator before the air is turned on: %0.0f kW',Tot_Pow_no_air);
mprintf('\nThe total power required for the agitator after the air is turned on: %0.0f kW',Tot_Pow_aerated);

//OUTPUT (Ex7.6.c )
mprintf('\n\n\n OUTPUT Ex7.6.c');
mprintf('\n==========================================================');
mprintf('\nThe calculated value of kLa (mass transfer coefficient) of solution:%0.2f (sec-1)',kLa_soln);
mprintf('\nThe calculated value of average dissolved O2 concentration: %0.2f (mg/L)',C_ave_conv);

 //OUTPUT (Ex7.6.d)
 mprintf('\n\n\n OUTPUT Ex7.6.d');
mprintf('\n==========================================================');
 mprintf('\nThe new calculated value of average dissolved O2 concentration  %0.2f (mg/L)',C_O2_new_conv);
 if(C_star_minus_C>C_O2_star_new)
     mprintf('\nThe reactor is operated above critical O2 concentration ');
 else
     mprintf('\nThe reactor should be operated at higher air rate otherwise C_O2 would drop to zero')
 end
 // FILE OUTPUT
fid= mopen('.\Chapter7-Ex6-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex7.6.a');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nAt the peak demand, fraction of the oxygen supplied = %.3f ',Frac_O2_used);
mfprintf(fid,'\n\n\n OUTPUT Ex7.6.b');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe total power required for the agitator before the air is turned on: %0.0f kW',Tot_Pow_no_air);
mfprintf(fid,'\nThe total power required for the agitator after the air is turned on: %0.0f kW',Tot_Pow_aerated);
mfprintf(fid,'\n\n\n OUTPUT Ex7.6.c');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe calculated value of kLa (mass transfer coefficient) of solution:%0.2f (sec-1)',kLa_soln);
mfprintf(fid,'\nThe calculated value of average dissolved O2 concentration: %0.2f (mg/L)',C_ave_conv);
mfprintf(fid,'\n\n\n OUTPUT Ex7.6.d');
mfprintf(fid,'\n==========================================================');
mfprintf(fid,'\nThe new calculated value of average dissolved O2 concentration  %0.2f (mg/L)',C_O2_new_conv);
 if(C_star_minus_C>C_O2_star_new)
     mfprintf(fid,'\nThe reactor is operated above critical O2 concentration ');
 else
     mfprintf(fid,'\nThe reactor should be operated at higher air rate otherwise C_O2 would drop to zero')
 end
 mclose(fid);
//===================================================END OF PROGRAM======================================================







