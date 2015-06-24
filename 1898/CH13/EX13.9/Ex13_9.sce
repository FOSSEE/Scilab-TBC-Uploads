clear all; clc;

disp("Scilab Code Ex 13.9 : ")

//Given:
P = 80; //kN
E = 210*10^3; //MPa
sigma_y = 360; //MPa
L = 5000; //mm
K = 0.5;

//Calculations:
I_by_d = (1/4)*(%pi)*(0.5^4);
A_by_d = (1/4)*(%pi);
r_by_d = sqrt(I_by_d/A_by_d);

sl_ratio_c = sqrt((2*%pi^2*E)/(sigma_y));
sigma_allow = (P*1000)/A_by_d;

d4 = (sigma_allow*23*(K*L)^2*16)/(12*%pi^2*E);
d = d4^(1/4);

//Check:
d = ceil(d);
r = d/4;
KL_r = (K*L)/r;


if(KL_r>sl_ratio_c & KL_r<200)
        printf('\n\nThe smallest diameter of the rod as allowed by AISC specification  = %1.0fmm',d);
   
end 

//------------------------------------------------------------------------END----------------------------------------------------------------------------- 
