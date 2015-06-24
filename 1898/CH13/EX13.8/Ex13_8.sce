clear all; clc;

disp("Scilab Code Ex 13.8 : ")

//Given:
E = 200*10^3; //MPa
sigma_y = 250; //MPa
L = 5*1000; //mm
K = 1;
A = 19000; //mm^2
rx = 117; //mm
ry = 67.4; //mm

//Calculations:
sl_ratio = (K*L)/(ry);
sl_ratio_c = sqrt((2*%pi^2*E)/(sigma_y));

if(sl_ratio>0 & sl_ratio<sl_ratio_c)
    num = (1 - (sl_ratio^2/(2*sl_ratio_c^2)))*sigma_y;
    denom1 = (5/3) + ((3/8)*sl_ratio/sl_ratio_c);
    denom2 = (sl_ratio^3)/(8*sl_ratio_c^3);
    sigma_allow = num/(denom1 - denom2);
    
    P = sigma_allow*A;
    P = P/1000;
       printf('\n\nThe largest load the pin supported column can safely bear = %1.0f kN',P);
       
   end
   
//---------------------------------------------------------------------END----------------------------------------------------------------------------
