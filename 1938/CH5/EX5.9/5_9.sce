clc,clear
printf('Example 5.9\n\n')

V_L=11000  , V_ph= V_L/sqrt(3)
VA=1000*1000
I_L=VA/(V_L*sqrt(3))

V_OC_ph=433/sqrt(3)
I_asc_ph=I_L

Z_s=V_OC_ph /I_asc_ph  //ohms per phase
R_a=0.45 //ohms per phase
X_s=sqrt(Z_s^2-R_a^2)

//part(i)
phi=acos(0.8) //lagging
E_ph = sqrt((V_ph*cos(phi)+I_L*R_a)^2 +(V_ph*sin(phi)+ I_L*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf lagging is %f percent\n',regulation)

//part(ii)
phi=acos(0.8) //leading
E_ph2 = sqrt((V_ph*cos(phi)+I_L*R_a)^2 +(V_ph*sin(phi)- I_L*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf lagging is %f percent\n',regulation2)
printf('\nAnswer mismatches due to improper approximation')
