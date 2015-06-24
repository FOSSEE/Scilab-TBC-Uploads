clear all; clc;

disp("From figure 4.7a,we have NPSHR=8.7ft=2.65m at Q=170gpm for the b.e.p. condition of the 8in impeller.")

disp("From figure 4.18 we have deltaNPSH=0.6ft=0.18m and pv=69kPa at T=90 degrees celsius for water. ")
disp("The total NPSPA is equal to  pt-rho*g*Z-pf-pv and the total NPSPR is equal to rho*g*(NPSHR-deltaNPSH)")
disp("To avoid cavitation, at the pump inlet ,it is required to have NPSPA>NPSPR")
disp("Hence it is required (pt-rho*g*Z-pf-pv)>rho*g*(NPSHR-deltaNPSH)")
p_f=10
p_v=69
rho=998
g=9.8
Z=2
NPSHR=2.65
deltaNPSH=0.18
p_t=p_f+p_v+rho*g*(Z+NPSHR-deltaNPSH)/1000//1000 is conversion factor
printf("\n Thus pt is equal to  %0.1f kPA",p_t)
