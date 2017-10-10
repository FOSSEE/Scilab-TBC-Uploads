//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc., USA,pp 436. 
//Chapter-7 Ex7.5.c Pg No.293
//Title:Dimension of reactor using lower gas velocity
//===========================================================================================================
clear
clc
//INPUT
u_g=5*(10^(-2))//Gas Velocity
R=82.056*(10^-3);//(cm3 atm/ K  mol)
T_C=180;//Temperature in (°C)
T_K=T_C+273;//Temperature in (K)
Epsilon_old=0.25;//Value calculated from Ex7.5.a
Epsilon_air_water_new=0.07;//At velocity  3(cm/sec)
Epsilon_air_water_old= 0.12;//At velocity 6(cm/sec)
P_total=20;//Total Pressure (atm)
F_product_acetic_acid=0.1;// Rate of acetic acid produced (kmol/sec)
F_total=0.167;//Value calculated from Ex7.5.b
r_test=3*(10^(-6));//Kinetic rate at 180 (°C) calculated in Ex7.5.a

//CALCULATION
Q=F_total*R*T_K/(P_total);
S=Q/u_g;
D_t=sqrt(4*S/%pi);
Epsilon_new=(Epsilon_air_water_new/Epsilon_air_water_old)*Epsilon_old;
liquid_vol= (F_product_acetic_acid/r_test)*(10^(-3));//liquid volume (m3)
h0=liquid_vol/S;//clear liquid
h_new=h0/(1-Epsilon_new);//aerated liquid

//OUTPUT
//Console Output
mprintf('\n\tThe new dimensions of the reactor');
mprintf('\n\tDiameter:%0.1f m',D_t);
mprintf('\n\tHeight:%0.1f m',h_new);
mprintf('\n\t The upper limit value of reactor height is 7 m and diameter is 2.8 m'); 
//File Output
fid= mopen('.\Chapter7_Ex5_c_Output.txt','w');
mfprintf(fid,'\n\tThe new dimensions of the reactor');
mfprintf(fid,'\n\tDiameter:%0.1f m',D_t);
mfprintf(fid,'\n\tHeight:%0.1f m',h_new);
mfprintf(fid,'\n\t The upper limit value of reactor height is 7 m and diameter is 2.8 m');
mclose(fid);
//====================================================END OF PROGRAM====================================================
//Disclaimer: The numerically calculated value of reactor height is 6.3 m not 6.4 m as mentioned in the textbook

