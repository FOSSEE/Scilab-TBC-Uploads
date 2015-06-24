clc,clear
printf('Example 5.17\n\n')

V_L=400,V_ph=V_L/sqrt(3)
VA=40*10^3
I_L=VA/(sqrt(3)*V_L) , I_aph=I_L
I_aph_X_Lph = 0.65*50  //leakage reactance drop in volts = 2.4 cm * 500 V/cm
X_Lph= I_aph_X_Lph/ I_aph
printf('Armature leakage reactance is %.3f ohms\nNote:This answer doesnt match with textbook as it has been reciprocated in textbook\n\n',X_Lph)
phi=acos(0.8)  //lagging
E_ph = sqrt((V_ph*cos(phi))^2 +(V_ph*sin(phi)+ I_aph_X_Lph)^2)
F_f1=15.6 //as obtained from OCC corresponding to this E_ph

F_AR= 2.3*3  //2.3cm * 3 A/cm
printf('Armature reaction is %.1f \n',F_AR)
F_R =   sqrt(F_f1^2 + F_AR^2 -2*F_AR*F_f1*cos(phi+ (%pi/2)) )  //cosine rule to Triangle OAB
E_ph=267.5  //corresponding to F_R from open circiut characteristics
regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf lagging is %.1f percent\n',regulation)
