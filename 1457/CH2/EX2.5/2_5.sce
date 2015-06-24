clc
//Initialization of variables
dia=4 //m
P=35 //kN/m^2
theta=30 //degrees
//Calculations
Fx=P*(dia-dia*(1-cosd(theta))/2.)
Fz=P*dia*sind(theta)/2
dist=(dia-dia*(1-cosd(theta))/2.)
Fxb=9.81*dist*dist/2 
Fzb=9.81*((180+theta)*%pi*(dia/2)^2/360 + sqrt(3) /2 + dia/2)
//Results
printf('part a')
printf('\n Horizontal force= %.1f kN/m to the right', Fx)
printf('\n Vertical force = %.1f kN/m upward' , Fz)
printf('\n part b')
printf('\n force by the fluid = %.1f kN/m to the right',Fxb)
printf('\n weight of the cross-hatched volume of liquid =%.1f kN/m Upward',Fzb )
