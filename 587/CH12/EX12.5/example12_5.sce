clear;
clc;

//Example12.6[Selective Absorber and Reflective Surfaces]
//Given:-
G_D=400,G_d=300;//Direct and diffuse components of solar radiation[W/m^2]
Ts=320,T_sky=260;//[K]
theta=20*%pi/180
//Solution:-
G_solar=(G_D*cos(theta))+G_d
//(a)
ab_a=0.9,e_a=0.9;//Grey absorber surface
q_net_rad_a=ab_a*G_solar+e_a*(5.67*10^(-8))*((T_sky^4)-(Ts^4));//[W/m^2]
disp("W/m^2",round(q_net_rad_a),"(a) The net radiation heat transfer is")
//(b)
ab_b=0.1,e_b=0.1;//Grey reflector surface
q_net_rad_b=ab_b*G_solar+e_b*(5.67*10^(-8))*((T_sky^4)-(Ts^4));//[W/m^2]
disp("W/m^2",round(q_net_rad_b),"The net radiation heat transfer is")
//(c)
ab_c=0.9,e_c=0.1;//Selective Absorber surface

q_net_rad_c=ab_c*G_solar+e_c*(5.67*10^(-8))*((T_sky^4)-(Ts^4));//[W/m^2]
disp("W/m^2",round(q_net_rad_c),"The net radiation heat transfer is")
//(d)
ab_d=0.1,e_d=0.9;//Selective reflector surface
q_net_rad_d=ab_d*G_solar+e_d*(5.67*10^(-8))*((T_sky^4)-(Ts^4));//[W/m^2]
disp("W/m^2",round(q_net_rad_d),"The net radiation heat transfer is")