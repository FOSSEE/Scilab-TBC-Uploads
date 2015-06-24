clear all; clc;

disp("Scilab Code Ex 13.13 : ")

//Given:
sigmaB_allow = 160; //MPa
E = 200; //GPa
sigma_y = 250; //MPa
K= 1;
A = 3790; //mm^2
Ix = 17.1*10^6; //mm^4
ry = 38.2; //mm
d = 157; //mm
c= d/2; 
e = 750; //mm
L = 4000; //mm

sl_ratio = (K*L)/(ry);
sl_ratio_c = sqrt((2*%pi^2*E*1000)/(sigma_y));



if(sl_ratio<sl_ratio_c)
    num = (1 - (sl_ratio^2/(2*sl_ratio_c^2)))*sigma_y;
    denom1 = (5/3) + ((3/8)*sl_ratio/sl_ratio_c);
    denom2 = (sl_ratio^3)/(8*sl_ratio_c^3);
    sigmaA_allow = num/(denom1 - denom2);
    
    coeffP = 1/(sigmaA_allow*A) + (e*c)/(Ix*sigmaB_allow);
    P = 1/coeffP;
    
    sigA = (P/A)/(sigmaA_allow);
    P = P/1000; //in kN
   
  
    if(sigA < 0.15)
        printf('\n\nThe maximum allowable value of eccentric load  = %1.2f kN',P);
    end
end

//---------------------------------------------------------------------------END--------------------------------------------------------------------------------
    
