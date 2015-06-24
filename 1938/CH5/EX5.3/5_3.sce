clc,clear
printf('Example 5.3\n\n')

//full load
V_L_FL=1100
V_ph_FL=V_L_FL/sqrt(3)

//no load
V_L_NL=1266
E_line=V_L_NL
E_ph=E_line/sqrt(3)
regulation=100*(E_ph-V_ph_FL)/V_ph_FL

printf('Regulation at full load is %.2f percent',regulation)
