clear
clc
//to find expression of velocity and acceleration of partical p
//to find displacement,velocity and accleration of partical 

// GIVEN:
//refer to problem 18-1
//distance moved up and down
x = 1.30//in cm
//frequency
f = 125//in per second
//wavelength
lambda = 15.6//in cm
//location of partical p
xp = 0.245//in meters
//time
t = 15.0//in ms

// SOLUTION
//using equations of sinusoidal wave motion
//amplitude of wave motion
ym = x/2//in cm
//wave speed
v = (lambda*10^-2)*f//in m/s //taking lambda in meters
//wave number
k = (2*%pi)/(lambda*10^-2)//in rad/m //taking lambda in meters
//angular frequency
omega = v*k//in rad/s
omega = nearfloat("succ",786)
//value of constant
ym_into_omega = ym*omega//in cm/s
k_into_x = k*xp//in rad
omega2_into_ym = (omega^2)*ym//in cm/s^2
//displacement of partical at t
y = (ym)*(sin((k_into_x) - (omega*(t*10^-3))))//in cm/s
//velocity of partical at t
uy = -(ym_into_omega)*(cos((k_into_x) - (omega*(t*10^-3))))//in cm/s
//acceleration of partical at t
ay = -(omega2_into_ym)*(sin((k_into_x) - (omega*(t*10^-3))))//in cm/s^2
ym_into_omega = round(ym_into_omega)

printf ("\n\n Expression of velocity of partical p is \n\n uy(xp,t) = -(%3i cm/s)*cos[(%.2f rad) - (%3i rad/s)t] ",ym_into_omega,k_into_x,omega)
printf ("\n\n Expression of accleration of partical p is \n\n ay(xp,t) = -(%.2e cm/s^2)*sin[(%.2f rad) - (%3i rad/s)t] ",omega2_into_ym,k_into_x,omega)
printf ("\n\n Value of omega^2*ym = \n\n %.2e cm/s^2",omega2_into_ym)
printf ("\n\n Displacement of partical at t y = \n\n %.2f cm",y)
//answer of uy is slightly different than book.answer of scilab program is same as that of calculator. 
printf ("\n\n Velocity of partical at t uy = \n\n %.2f cm/s",uy)
printf ("\n\n Acceleration of partical at t ay = \n\n %.1e cm/s^2",ay)
