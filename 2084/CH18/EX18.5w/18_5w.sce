//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.5w
//calculation of maximum angle of reflection for a surface

//given data
mu=1.25; //refractive index of medium

//calculation
thetadashdash=asind(1/mu); //critical angle for total internal reflection(in degree)
thetadash=90-thetadashdash;
theta=asind(mu*sind(thetadash)); //snell's law    sin(theta)/sin(thetadash)=mu

disp(theta,'maximum value of theta(in degree) for total internal reflection at vertical surface');
 
