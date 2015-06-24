clc,clear
printf('Example 5.14\n\n')

VA=1000*1000
V_L=4600 , V_ph=V_L/sqrt(3)
I_L=VA/(sqrt(3)*V_L)
I_aph_FL=I_L,I_aph=I_aph_FL
I_sc=(150/100)* I_aph_FL
V_OC_line=1744
V_OC_ph= V_OC_line/sqrt(3)

Z_s=V_OC_ph / I_sc
R_a=1
X_s=sqrt(Z_s^2-R_a^2)

phi=acos(0.8 ) //lagging
E_ph = sqrt((V_ph*cos(phi)+I_aph*R_a)^2 +(V_ph*sin(phi)+ I_aph*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at full load 0.8 pf is %.2f percent\n',regulation)
