clear all; clc;

disp("Scilab Code Ex 13.10 : ")

//Given:
L = 750; //mm
P = 60; //kN
sigma = 195; //N/mm^2
K = 1;

//Calculations:
b2 = (P*1000)/(2*sigma);
b = sqrt(b2);

A = 2*b*b;
Iy = (1/12)*(2*b*b^3);
ry = sqrt(Iy/A);

sl_ratio = (K*L)/(ry);



if(sl_ratio>12)
    b4 = (P*1000*2598.1^2)/(2*378125); //Eqn 13.26
    b = b4^(1/4);
   
    sl_ratio = (2598.1)/(b);
    w = 2*b;
    
    if(sl_ratio>55)
        printf('\n\nThe thickness of the bar  = %1.0fmm',b);
       printf('\nThe width of the bar      = %1.0fmm',w);
   end
end

//-------------------------------------------------------------------------END----------------------------------------------------------------------------
   
