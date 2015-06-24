clc
// initialization of variables
clear
// part (c)
r_A=1.47 //m
theta=%pi
// S_th=-125*cos(theta)+(14.2857-9.5250*r)/r*(1-cos(theta))*10^5 //kPa
r=r_A
S_th=-125*cos(theta)+(14.2857-9.5250*r)/r*(1-cos(theta))*10^5 //kPa
S_A=S_th

r_B=1.53 //m
r=r_B
S_th=-125*cos(theta)+(14.2857-9.5250*r)/r*(1-cos(theta))*10^5 //kPa
S_B=S_th
printf('part (c)')
printf('\n The tensile stress at A is %.2f MPa',S_A/1000)
printf('\n The compressive stress at B is %.2f MPa',S_B/1000)

// part (d)
theta=%pi/2
r=r_A
S_th=-125*cos(theta)+(14.2857-9.5250*r)/r*(1-cos(theta))*10^5 //kPa
S_A=S_th
r=r_B
S_th=-125*cos(theta)+(14.2857-9.5250*r)/r*(1-cos(theta))*10^5 //kPa
S_B=S_th
printf('\n part (d)')
printf('\n The tensile stress at A is %.2f MPa',S_A/1000)
printf('\n The compressive stress at B is %.2f MPa',S_B/1000)

//part (e)

