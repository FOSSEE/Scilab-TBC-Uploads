clc,clear
printf('Example 5.16\n\n')

V_L=6000,V_ph=V_L/sqrt(3)
I_ph_X_Lph = 0.9*500  //leakage reactance drop in volts = 0.9 cm * 500 V/cm
phi= acos(0.8) //lagging

E_1ph=sqrt( (V_ph*cos(phi))^2 + (V_ph*sin(phi)+I_ph_X_Lph)^2 )   //From triangle OAB
F_f1 = 26 //from OCC
F_AR= 2.9*5  //2.9cm * 5 A/cm

F_R =   sqrt(F_f1^2 + F_AR^2 -2*F_AR*F_f1*cos(phi+ (%pi/2)) )
printf('Required field current is %.2f A',F_R)
