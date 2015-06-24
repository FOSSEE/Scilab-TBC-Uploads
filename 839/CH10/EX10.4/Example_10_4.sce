//clear//
clear;
clc;

//Example 10.4
//Given
k = 0.075; //[Btu/ft-h-F]
rho = 56.2; //[lb/ft^3]
Cp  = 0.40; //[Btu/lb-F]
s = 0.5/12; //[ft.]
Ts = 250; //[F]
Ta = 70; //[F]
Tb_bar = 210; //[F]

//(a)
Temp_diff_ratio = (Ts-Tb_bar)/(Ts-Ta);
alpha = k/(rho*Cp);
// From Fig.10.6
N_Fo =0.52;
tT = N_Fo*s^2/alpha //[h]

//(b)
//Substituting in Eq.(10.23)
QTbyA = s*rho*Cp*(Tb_bar-Ta) //[Btu/ft^2]   
