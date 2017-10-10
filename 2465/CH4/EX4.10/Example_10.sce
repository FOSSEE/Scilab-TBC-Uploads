//Chapter-4,Example 10,Page 95
clc;
close;

delta_H1 = 538   //latent heat of water at 100 degree 

T1= 273 + 100  //temperature in Kelvin

T2= 273 +150   //temperature in Kelvin

Cp_w = 1    // for water

Cp_s = 8.1/18  //for steam

delta_Cp = Cp_s - Cp_w 

delta_H2 = delta_H1 + delta_Cp*(T2-T1)   //latent heat of water at 150 degree

printf('the latent heat of  water at 150 degree is %.2f cal/g',delta_H2)
