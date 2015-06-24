clc,clear
printf('Example 5.24\n\n')

V_L=13500
R_a=1.5 , X_s=30 //armature resistance and synchronous reactance
V_ph=V_L/sqrt(3)

//CASE 1
phi1=acos(0.8)
P_out=1280*10^3
I_L= P_out/ (sqrt(3)*V_L*cos(phi1) )    //because P_out=sqrt(3)*V_L*I_L*cos(phi)

I_a=I_L
E_ph=sqrt((V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)+I_a*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('Regulation at 0.8 lagging power factor is %.2f percent',regulation)

//Case 2
phi2=acos(1)
I_L= P_out/ (sqrt(3)*V_L*cos(phi2) )    //because P_out=sqrt(3)*V_L*I_L*cos(phi)

I_a=I_L
E_ph=sqrt((V_ph*cos(phi2)+I_a*R_a)^2+(V_ph*sin(phi2)+I_a*X_s)^2)
regulation2=100*(E_ph-V_ph)/V_ph
printf('\nRegulation at unity power factor is %.2f percent',regulation2)

//case 3
phi3=acos(0.8)
I_L= P_out/ (sqrt(3)*V_L*cos(phi3) )    //because P_out=sqrt(3)*V_L*I_L*cos(phi)
I_a=I_L
E_ph=sqrt((V_ph*cos(phi3)+I_a*R_a)^2+(V_ph*sin(phi3)-I_a*X_s)^2)// minus sign in the second bracket beacuse of leading pf
regulation3=100*(E_ph-V_ph)/V_ph
printf('\nRegulation at 0.8 leading power factor is %.2f percent',regulation3)
