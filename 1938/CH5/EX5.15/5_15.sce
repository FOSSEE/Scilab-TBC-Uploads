clc,clear
printf('Example 5.15\n\n')

//part(i)    Ampere turn method
F_O=37.5
F_AR=20
V_L=6600, V_ph=V_L/sqrt(3)

//lagging
phi=acos(0.8) 
F_R= sqrt((F_O+F_AR*sin(phi) )^2 + (F_AR*cos(phi))^2 ) 
//E_ph corresponding to F_R can be obtained by plotting open circuit characteristics
E_ph=4350
regulation=100*(E_ph-V_ph)/V_ph
printf('(i)By Ampere-turn method or MMF method\nFull-load regulation at 0.8 lagging pf is %.2f percent\n',regulation)
//leading
phi=acos(0.8) 
F_R= sqrt((F_O-F_AR*sin(phi) )^2 + (F_AR*cos(phi))^2 ) 
//E_ph corresponding to F_R can be obtained by plotting open circuit characteristics
E_ph=3000
regulation=100*(E_ph-V_ph)/V_ph
printf('Full-load regulation at 0.8 leading pf is %.2f percent\n',regulation)

//EMF method
V_OC_ph=100,V_ph=100
I_sc= 100*(F_O/F_AR)   //times the rated value
Z_s=V_OC_ph/I_sc
F_O= 100
F_AR= Z_s*100

//lagging
phi=acos(0.8)
F_R=  sqrt((F_O+F_AR*sin(phi) )^2 + (F_AR*cos(phi))^2 ) 
regulation=100*(F_R-V_ph)/V_ph
printf('\n(ii)Synchronous impedance method or EMF method\n')
printf('Full-load regulation at 0.8 lagging pf is %.2f percent\n',regulation)
//leading
phi=acos(0.8)
F_R=  sqrt((F_O-F_AR*sin(phi) )^2 + (F_AR*cos(phi))^2 ) 
regulation=100*(F_R-V_ph)/V_ph
printf('Full-load regulation at 0.8 leading pf is %.2f percent\n',regulation)
