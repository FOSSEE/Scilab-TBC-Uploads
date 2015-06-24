clc;
//Example 22.7
//page no 302
printf("Example 22.7 page no 302\n\n ");
//natural gas consisting of essentially pure methane flows through a long straight standard 10 inch steel pipe into which is inserted a square edged orifice 2.50 inches in diameter ,with pressure taps ,each 5 inch from the orifice plate
//manometer is attached across the orifice reads 1.60 in H20
D_o=2.50//diameter of orifice
D_1=10.15//diameter of plate
D_r=D_o/D_1//ratio of diameters
//assuming the reynolds no R_e in the orifice to be over 30,000
C_o=0.61//coeff. of discharge from R_e value
g=32.2//garv. acc ft/s^2
rho_m=62.4//density of medium (water)
rho=0.054//density of methane gas,lb/ft^3
h=1.60//manometer reading height,in
meu=12*0.011*0.000672//viscosity 
v_o= C_o*sqrt((2*g*h*rho_m)/(12*rho))// orifice velocity
printf("\n orifice veloctiy v_o=%f ft/s",v_o);
R_e_o=D_o*v_o*rho/meu//reynolds no in the orifice
printf("\n R_e_o reynolds no =%f ",R_e_o);
//from R_e_o value C_o=0.61 is permissible
m_dot=round(v_o*(%pi/4)*(D_o^2)*rho*(3600/144))//mass flow rate 
printf("\n mass flow rate m_dot=%f lb/hr",m_dot);
