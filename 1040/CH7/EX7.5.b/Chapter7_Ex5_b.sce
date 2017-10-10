//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436.
//Chapter-7 Ex7.5.b Pg No.293 
//Title:Dimensions of the bubble column reactor
//===========================================================================================================
clear
clc
//INPUT
F_product_acetic_acid=0.1;// Rate of acetic acid produced (kmol/sec)
f_CO_reacted=0.8;//80% of CO reacted
f_CO=0.75;//Fraction of CO in feed
T_C=180;//Temperature in (°C)
T_K=T_C+273;//Temperature in (K)
P_total=20;//Total Pressure (atm)
R=82.056*(10^-3);//(cm3 atm/ K  mol)
u_g=0.1;//(m/sec)
Conc_Rh=4*10^(-3);//Concentration of Rohdium(M)
Conc_CH3I=1;//Concentration of Methyl Iodide(M)
Epsilon=0.25;//Value calculated from Ex7.5.a

//CALCULATION
F_feed_CO=F_product_acetic_acid/f_CO_reacted;//Rate of flow of CO (kmol/sec)
F_total=F_feed_CO/f_CO;
Q=F_total*R*T_K/(P_total);
S=Q/u_g;
D_t=sqrt(4*S/%pi);
r_test=(158.8*(10^(6))*exp(-8684/T_K)*(Conc_Rh)*(Conc_CH3I))*(10^(-3));//Kinetic rate at 180 (°C) 
liquid_vol= (F_product_acetic_acid/r_test)*(10^(-3));//liquid volume (m3)
h0=liquid_vol/S;//clear liquid
h=h0/(1-Epsilon);//aerated liquid

//OUTPUT
//Console Output
mprintf('\n\tThe Dimensions of the reactor are ');
mprintf('\n\tDiameter:%0.0f m',D_t);
mprintf('\n\tHeight:%0.2f m',h);
mprintf('\n\t The upper limit value of reactor height is 15 m and diameter is 2 m'); 
//File Output
fid= mopen('.\Chapter7_Ex5_b_Output.txt','w');
mfprintf(fid,'\n\tThe Dimensions of the reactor are ');
mfprintf(fid,'\n\tDiameter:%0.0f m',D_t);
mfprintf(fid,'\n\tHeight:%0.2f m',h);
mfprintf(fid,'\n\t The upper limit value of reactor height is 15 m and diameter is 2 m');
mclose(fid);
//================================================END OF PROGRAM=========================================================
//Disclaimer: The numerically calculated value of reactor height is 14.34 m not 14.4 m as mentioned in the textbook
