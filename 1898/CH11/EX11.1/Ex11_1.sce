clear all; clc;

disp("Scilab Code Ex 11.1 : ")

//Given:
sigma_allow = 170; //MPa
tou_allow = 100; //MPa

//Shear and Moment Diagrams:
V_max = 90; //kN
M_max = 120; //kNm

//Bending Stress:
S_reqd = (M_max*(10^3))/sigma_allow;

W = [60 67 64 74 80 100];
S = [1120 1200 1030 1060 984 987];

i = find(min(W));
S_chosen = S(i);
flag1 = 0;
flag2 = 0;

if (S_reqd<S_chosen) 
   flag1 =1; 
end

//Shear Stress:
d = 455; //mm
tw = 8; //mm
tou_avg = (V_max*10^3)/(d*tw);

if(tou_avg<tou_allow)
    flag2 =1;
end

if(flag1==1 & flag2==1)
    
    
     printf("\n\nUse a W460X60 standard shape.');
end

//--------------------------------------------------------------------------END-------------------------------------------------------------------------------------






