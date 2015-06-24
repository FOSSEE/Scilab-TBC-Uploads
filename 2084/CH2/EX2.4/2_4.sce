//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.4
//calculation of work done by the force during displacement

//given data
F=12; //force(in newton) acting on the particle
r=2; //displacement(in m) of the particle
theta=180; //angle(in degree) between force and displacement

//calculation
W=F*r*cosd(theta);//formula of work done

disp(W,'work done(in J) by the force,during the given displacement is');
