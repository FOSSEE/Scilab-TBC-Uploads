clc,clear
printf('Example 5.26\n\n')

V_L=11*10^3
VA_rating=10^6
R_a=2.2 //alternator resistance
phi=acos(0.8)

I_L=VA_rating/(sqrt(3)*V_L)//VA=sqrt(3)V_L*I_L
I_a=I_L
V_ph=V_L/sqrt(3)
regulation=24

E_ph= ((regulation/100)+1)*V_ph    // because regulation=100*(E_ph-V_ph)/V_ph
//using E_ph=sqrt((V_ph*cos(phi)+I_a*R_a)^2+(V_ph*sin(phi)+I_a*X_s)^2)
X_s=(sqrt(E_ph^2-((V_ph*cos(phi)+I_a*R_a)^2))-V_ph*sin(phi))*(1/I_a)

phi1=acos(0.8)
E_ph=sqrt((V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)-I_a*X_s)^2)
regulation1=100*(E_ph-V_ph)/V_ph
printf('\nRegulation at 0.8 leading power factor is %.2f percent',regulation1)
