clear all; clc;

disp("Scilab Code Ex 13.7 : ")

//Given:
d = 30; //mm
r = d/2;
L = 600; //mm
sigma_pl = 150;//MPa

//Calculations:
I = (%pi/4)*(r^4);
A = %pi*r^2;
r_gyr = sqrt(I/A);
K = 1;
sl_ratio = (K*L)/(r_gyr);
flag1 = 0;

//Assuming the critical stress is elastic:
E = 150/0.001;
sigma_cr1 = (%pi^2*E)/(sl_ratio^2); //Pcr = (%pi^2*EI)/(l^2)


if(sigma_cr1 > sigma_pl)
    Et = (270 - 150)/(0.002 - 0.001);
    sigma_cr2 = (%pi^2*Et)/(sl_ratio^2); //Pcr = (%pi^2*EI)/(l^2)
    
   if(sigma_cr2>150 & sigma_cr2<270) 
       Pcr = sigma_cr2*A;
       Pcr = Pcr/1000; //in kN
        printf('\n\nThe critical load when used as a pin supported column = %1.0fkN',Pcr);
   
   end
    
       
end



