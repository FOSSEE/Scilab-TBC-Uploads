//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-7 Ex7.6.b Pg No.300
//Title:Power of agitator before and after air is on
//======================================================================================================================
clear
clc
//INPUT
Da_by_Dt=(1/3);
Da=1.333;//(m)
N=120;//(rpm)
N_conv=(N/60);//(sec-1)
Press_top=1;//Pressure at the top of the vessel (atm) 
myu_soln=1.5*(10^(-3));//Viscosity of solution (Pa sec)
rho=1000;//Density of water (kg/m3)
ug_sup1=3*(10^(-2));//based on 30(°C) and 1 (atm).
S=12.6;//Value calculated for cross section area in Ex7.6.b

//CALCULATION
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

//OUTPUT
//ConsoleOutput
mprintf('\n\tThe total power required for the agitator before the air is turned on: %0.0f kW',Tot_Pow_no_air);
mprintf('\n\tThe total power required for the agitator after the air is turned on: %0.0f kW',Tot_Pow_aerated);
//File Output
fid= mopen('.\Chapter7_Ex6_b_Output.txt','w');
mfprintf(fid,'\n\tThe total power required for the agitator before the air is turned on: %0.0f kW',Tot_Pow_no_air);
mfprintf(fid,'\n\tThe total power required for the agitator after the air is turned on: %0.0f kW',Tot_Pow_aerated);
mclose('all')
//=========================================================END OF PROGRAM===============================================



