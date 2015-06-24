clc,clear
printf('Example 5.18\n\n')

VA=10*10^3
V_L=11*10^3,V_ph=V_L/sqrt(3)
I_ph_X_Lph = 2.4*500  //leakage reactance drop in volts = 2.4 cm * 500 V/cm
I_ph_R_aph =VA/(sqrt(3)*V_L)
phi=acos(0.8)
E_ph = sqrt((V_ph*cos(phi)+I_ph_R_aph)^2 +(V_ph*sin(phi)+ I_ph_X_Lph)^2)
F_f1=109 //obtained from open circuit characteristics corresponding to calculated E_ph
F_AR= 2.8*10  //2.8cm * 10 A/cm
F_R =   sqrt(F_f1^2 + F_AR^2 -2*F_AR*F_f1*cos(phi+ (%pi/2)) )  //cosine rule to Triangle OAB
E_ph=7700  //corresponding to F_R from open circiut characteristics

regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at full-load 0.8 pf lagging is %.2f percent\n',regulation)
