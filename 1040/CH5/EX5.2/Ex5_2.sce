//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-5 Ex5.2 Pg No. 194
//Title: Maximum internal temperature difference
//=============================================================================================================
clear
format(16)
clc
//INPUT
T_C=200;//Temperature(°C)
P=1.2;//Pressure (atm)
f_ethylene=0.05;//fraction of ethylene
k_s=8*10^(-4);//Solid conductivity (cal/sec cm°C)
D_e=0.02;//Diffusivity for ethylene (cm2/s)
del_H= -32.7*10^(3);//Heat of reaction (cal)
V_ref=22400;// reference volume(cm3)
T_ref=273;//Reference Temperature (K)
P_ref=1;//Reference Pressure (atm)
T_K=T_C+273;//Reaction Temperature (K)

//CALCULATION
C_s=f_ethylene*P*T_ref/(V_ref*T_K*P_ref);
Tc_minus_Ts=D_e*C_s*(-del_H)/k_s;//Refer equation 5.51 Pg No. 194

//OUTPUT
mprintf('\n\tThe maximum internal temperature difference %0.3f °C',Tc_minus_Ts);

//FILE OUTPUT
fid= mopen('.\Chapter5-Ex2-Output.txt','w');
mfprintf(fid,'\n\tThe maximum internal temperature difference %0.3f °C',Tc_minus_Ts);
mclose(fid);

//=====================================================END OF PROGRAM=================================================
