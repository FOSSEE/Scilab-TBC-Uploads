clc,clear
printf('Example 5.5\n\n')

V_OC_line=230,I_asc=12.5  // when I_f=0.38
V_OC_ph=V_OC_line/sqrt(3)
Z_s=V_OC_ph/I_asc 

R_a=1.8/2  //1.8 is between terminals..0.9 is per phase
X_s=sqrt(Z_s^2-R_a^2)

I_a=10// when regulation is needed
V_L=230
V_ph=V_L/sqrt(3)

//Part(i)
phi1=acos(0.8) //and lagging
E_ph1=sqrt((V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)+I_a*X_s)^2)
regulation1=100*(E_ph1-V_ph)/V_ph
printf('Regulation for 10 A at 0.8 lagging pf is %.2f percent\n',regulation1)
//Part(ii)
phi2=acos(0.8) //and leading
E_ph2=sqrt((V_ph*cos(phi2)+I_a*R_a)^2+(V_ph*sin(phi2)-I_a*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf('Regulation for 10 A at 0.8 leading pf is %.2f percent\n',regulation2)
