//Ex2_7 Pg-88
clc
disp("Relaxation time in terms of mobility is given by")
disp("        t=m*u/e")
printf("\n\n Taking effective mass of electron an holes in consideration,\n relaxation time is given by \n")
disp("        t=m_star*u/e")
disp("(a) foe electrons,m_star = 0.259*m_0")
m0=9.1*10^(-31) 
ue=0.135 //mobility of electrons
e=1.6*10^(-19) //electron charge
t_e=(0.259*m0*ue)/e
printf("\n Average relaxation time of eletrons = %.2f*1e-13 secs\n ",t_e*1e13)

uh=0.048 //mobility of holes
disp("(b) For holes in the valance band,m=0.537*m_0")
t_h=(0.537*m0*uh)/e
printf("\n Average relaxation time of eletrons = %.2f*1e-13 secs\n ",t_h*1e13)
