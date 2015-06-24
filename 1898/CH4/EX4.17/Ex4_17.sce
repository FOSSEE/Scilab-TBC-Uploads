clear all; clc;

disp("Scilab Code Ex 4.17 : ")

//Given:
r = 5/1000; //m
yield = 420; //MPa
E = 70; //GPa
P = 60; //kN
l_ac = 100/1000; //m
l_cb = 300/1000; //m
F_a = 45; //kN by elastic analysis
F_b = 15; //kN by elastic analysis

//Calculations:
area = %pi*(r^2)
sigma_ac = F_a/(area*1000);
sigma_ac1 = sigma_ac;
sigma_cb = F_b/(area*1000);
sigma_cb1 = sigma_cb;

if(sigma_ac>yield)
    F_a_y = yield*10^3*area;
    F_b = P - F_a_y;
    
    sigma_ac = yield;
    sigma_cb = F_b/(area*1000);
end

//Residual Stress:
defl_c = (F_b*l_cb)/(area*E*10^6);
strain_cb = defl_c/l_cb;
strain_ac = -defl_c/l_ac;

sigma_ac_r = -sigma_ac+ sigma_ac1;
sigma_cb_r = sigma_cb - sigma_cb1;

    sigma = sigma_cb_r;
    
//Permanent Displacement:
res_strain_cb = (sigma*10^6)/(E*10^9);
perm_defl_c = res_strain_cb*l_cb*1000;


//Display:

printf("\n\nThe residual stress in AC                          = %1.1f MPa",sigma_ac_r);
printf("\nThe residual stress in CB                          = %1.1f MPa",sigma_cb_r);
printf("\nThe permanent displacement of the collar at C      = %1.3f mm",perm_defl_c);

//----------------------------------------------------------------------END-----------------------------------------------------------------------------------



