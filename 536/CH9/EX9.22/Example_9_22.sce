clc;
clear;

printf("\n Example 9.22\n");

d=0.5;//diameter of chamber
l=2;//Length of chamber
e=0.5;//Emissivity
T_s=750;//Temperature at which the chamber is maintained
P=150e3;
T_g=1250;
sigma=5.67e-8;

//The partial pressures of carbon dioxide (P_c) and of water (P_w) are:
P_c=0.1*P;
P_w=P_c;
//From Table 9.7:
V=%pi/4*d^2*l;//Volume of the chamber
A_s=(2*%pi/4*d^2)+(%pi*d*l);//total surface are of chamber

L_e=3.6*(V/A_s);
//FOR WATER VAPOUR
//and from Figure 9.44, e_w = 0.075
//Since P_w*L_e = 0.06 bar m, then from Figure 9.44:
C_w=1.4;
e_w1=C_w*0.075;
//FOR CARBON DIOXIDE
//Since P = 1.5 bar, Pc = 0.15 bar and P_c*L_e = 0.06 bar m, then, from 
//Figure 9.38:
//and from Figure 9.45, e_c = 0.037
C_c1=1.2;
e_c1=(C_c1*0.037);
A=(P_w+P_c)*L_e;
B=P_c/(P_c+P_w)
//Thus, from Figure 9.45 for T_g > 1203 K, De = 0.001
//and, from equation 9.160:
De=0.001;
e_g=e_w1+0.044-De;

//FOR WATER VAPOUR
//Since 0.5*(P_w+P)=0.825 bar and P_w*L_e*(Ts/Tg)=P_c*L_e(Ts/Tg)=0.036 bar m,
//then, from Figure 9.44:C_w=1.4
e_w2=(0.12*C_w);
//and the absorptivity, from equation 9.163 is:
a_w=e_w2*(T_g/T_s)^0.65;
//FOR CARBON DIOXIDE
//From Figure 9.45 at 750 K, e_c=0.08
//From Figure 9.45 at P=1.5 bar and P_c*L_e*(Ts/Tg)= 0.036 bar m:
C_c2=1.02;
e_c2=(0.08*C_c2);
//and the absorptivity, from equation 9.164 is:
a_c=e_c2*(T_g/T_s)^0.65;
//P_w/(P_c+Pw)=0.5 and (P_c+P_w)*L_e*(T_s/T_g)=(0.036+0.036)=0.072 bar m
//Thus, from Figure 9.46, for Tg=813 K, De=Da <0.01 and this may be neglected
a_g=a_w+a_c;
//If the surrounding surface is black, then:
Q=sigma*A_s*(e_g*T_g^4-a_g*T_s^4);
printf("\n Radiation to the walls if the surface is black = %.1f kW",Q*1e-3);
//For grey walls, the correction factor allowing for multiple reflection of
//incident radiation is:
C_g=0.5/(1-(1-0.326)*(1-0.5));
Q_w=(Q*C_g);
printf("\n Net radiation to the walls = %.1f kW",Q_w*1e-3);