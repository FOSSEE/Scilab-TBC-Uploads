clc,clear
printf('Example 5.20\n\n')

R_a=0.6,X_s=6 //armature resistance and synchronous reactance per phase
E_L=6599, E_ph=E_L/sqrt(3)
I_L=180,I_a=I_L

//part(i)
// using E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)+ I_a*X_s)^2) and solving for V_ph
p=[1 1135.83 -13338836.49]
roots(p)
V_ph=ans(2)
V_L=V_ph*sqrt(3)
regulation=100*(E_ph-V_ph)/V_ph

phi=acos(0.9)
theta=atan(      (I_a*X_s+V_ph*sin(phi) )/(E_ph)               )
delta=theta-phi
printf('(i)0.9 lagging\nTerminal voltage is %.2f V\nVoltage regulation is %.2f percent\nLoad angle is %.2f degrees',V_ph*sqrt(3),regulation,delta*(180/%pi))

//part(ii)
phi_2=acos(0.8)
// using E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)- I_a*X_s)^2) and solving for V_ph
p=[1 -941.53 -11399574.87]
roots(p) 
V_ph=ans(1) //second root is ignored as its -ve
V_L=V_ph*sqrt(3)
regulation2=100*(E_ph-V_ph)/V_ph
delta_2 = asin( (tan(phi)*(V_ph*cos(phi_2)+I_a*R_a) -I_a*X_s )/E_ph   )
printf('\n\n(ii)0.8 leading\nTerminal voltage is %.2f V\nVoltage regulation is %.2f percent\nLoad angle is %.2f degrees',V_L,regulation2,delta_2*(180/%pi))
