clc,clear
printf('Example 5.7\n\n')

//case(i)
V_L=440
V_ph=V_L/sqrt(3)
phi=acos(0.8)

//armature resistance drop from the graph
//RS=1.1 cm and scale =50 V/cm
arm_leak_resis= 1.1*50    //armature leakage resistance

OB=V_ph*cos(phi)
AB=V_ph*sin(phi) + arm_leak_resis
E_1ph= sqrt( OB^2+AB^2   )

F_f1=6.1  //corresponding value from OCC
F_AR=3.1*1

F_R= sqrt(   F_f1^2 + F_AR^2 -2*F_f1*F_AR*cosd(90+acosd(0.8))           )
E_ph=328 //voltage corresponding to F_R=8.33 A from OCC graph
regulation1= 100*(E_ph - V_ph)/V_ph
printf('(i)Regulation for 0.8 pf lagging is %.2f percent \n',regulation1)

//case(ii)

OC=V_ph*cos(phi)
BC=V_ph*sin(phi) - arm_leak_resis
E_1ph= sqrt( OC^2+BC^2   )

F_f1=6.1  //corresponding value from OCC
F_R= sqrt(   F_f1^2 + F_AR^2 -2*F_f1*F_AR*cosd(90-acosd(0.8))           )
E_ph=90 //volatge corresponding to F_R=3.34 A from OCC graph
regulation2= 100*(E_ph - V_ph)/V_ph
printf('(ii)Regulation for 0.8 pf leading is %.2f percent \n',regulation2)
printf('\nThe answer in part (ii) doesnt match with textbook because of calculation mistake done in last step in the textbook')
