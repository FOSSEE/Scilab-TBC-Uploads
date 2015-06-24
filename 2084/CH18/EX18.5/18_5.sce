//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear; 
//example 18.5
//calculation of refractive index of material from known value of angle of minimum deviation by prism

//given data
deltam=37; // angle of minimum deviation by prism of the material(in degree)
A=53; //angle of prism(in degree)

//calculation
mu=sind((A+deltam)/2)/sind(A/2); //relation between refractive index and angle of minimum deviation by prism

disp(mu,'refractive index of material of the prism is');
