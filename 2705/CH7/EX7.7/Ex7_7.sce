
clear;
clc;
disp('Example 7.7');

//  aim : To determine the  
//  (a) change of entropy
//  (b)  The approximate change of entropy obtained by dividing the heat transferred by the gas by the mean absolute temperature during the compression

//  Given values
P1 = 140;// initial pressure,[kN/m^2]
V1 = .14;// initial volume, [m^3]
T1 = 273+25;// initial temperature,[K]
 P2 = 1400;// final pressure [kN/m^2]
 n = 1.25; // polytropic index
 cp = 1.041;// [kJ/kg K]
 cv = .743;// [kJ/kg K]
 
 //  solution
 // (a)
 R = cp-cv;// [kJ/kg/K]
 //  using ideal gas equation 
 m = P1*V1/(R*T1);// mass of gas,[kg]
 //  since gas is following law P*V^n=constant ,so 
 V2 = V1*(P1/P2)^(1/n);//  [m^3]
 
 //  using eqn [9]
 del_s = m*(cp*log(V2/V1)+cv*log(P2/P1));//  [kJ/K]
 mprintf('\n (a) The change of entropy is  =  %f kJ/K\n',del_s);
 
 //  (b)
 W = (P1*V1-P2*V2)/(n-1);// polytropic work,[kJ]
 Gamma = cp/cv;// heat capacity ratio
 Q = (Gamma-n)/(Gamma-1)*W;// heat transferred,[kJ]
 
 // Again using polytropic law
 T2 = T1*(V1/V2)^(n-1);// final temperature, [K]
 T_avg = (T1+T2)/2;// mean absolute temperature, [K]
 
 // so approximate change in entropy is
 del_s = Q/T_avg;// [kJ/K]
 
 mprintf('\n (b) The approximate change of entropy obtained by dividing the heat transferred by the gas by the mean absolute temperature during the compression  =  %f  kJ/K\n',del_s);
 
 //  End
