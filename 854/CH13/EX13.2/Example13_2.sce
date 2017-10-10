//clear//
//Caption:Program to find the maxima and minma electric field
//Example13.2
//page443
clc;
clear
er1 = 4; 
ur1 = 1;
er2 = 9;
ur2 = 1;
eo = 8.854187*10^-12;
uo = 4*%pi*10^-7;//free space permittivity and permeability
u1 = uo*ur1; //permeability of medium 1
u2 = uo*ur2; //permeability of medium 2
e1 = eo*er1; //permittivity of medium 1
e2 = eo*er2; //permittivity of medium 2
etta1 = sqrt(u1/e1);
etta2 = sqrt(u2/e2);
T = (etta1-etta2)/(etta1+etta2);
Exs1_i = 100; //incident electric field in v/m
Exs1_r = -20; //reflected electric field in v/m
Ex1T_max = (1+abs(T))*Exs1_i;//maximum transmitted electric field in v/m
Ex1T_min = (1-abs(T))*Exs1_i;//minimum transmitted electric field in v/m
S = (1+T)/(1-T); //voltage standing wave ratio
disp(Ex1T_max,'maximum transmitted electric field in v/m =')
disp(Ex1T_min,'minimum transmitted electric field in v/m =')
disp(S,'voltage standing wave ratio S=')
//Result
//maximum transmitted electric field in v/m =   
//     120.  
//minimum transmitted electric field in v/m =   
//    80.  
//voltage standing wave ratio S=   
//    1.5