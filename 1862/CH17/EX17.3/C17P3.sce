clear
clc
//to find equation for x(t)

// GIVEN:
//refer to problem 17-1
//mass of boby
M = 1.65//in Kg
//increase in length
y = 7.33//in cm
//mass of block
m = 2.43//in Kg
//distance by which spring is streched
x_m = 11.6//in cm
//displacement of block
x = 0.0624//in meters
//velocity of block
vx = 0.847//in m/s
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:
//applying simple harmonic motion equation  
//equating forces in y direction
//force constant k of spring
k = (-M*g)/(-y*10^-2)//in N/m //taking y in meters
//total energy of system
E = ((1/2)*m*(vx^2))+((1/2)*k*(x^2))//in J
//maximum amplitude of motion
xm = sqrt((2*E)/k)//in meters
//using cosin equation of x
//value of cos(fi)
cos_fi = x/xm
//phase constant
fi1 = acosd(cos_fi)
fi2 = 360-(fi1)
fi = fi2*(%pi/180)//in rad
//period of oscillation
T = (2*%pi*(sqrt(m/k)))*10^3//in miliseconds
//angular frequency
omega = (2*%pi)/(T*10^-3)//in rad/s
//initial velocity
v_x1 = -(omega*xm)*sind(fi1)//in m/s
v_x2 = -(omega*xm)*sind(fi2)//in m/s
xm = nearfloat("pred",0.1085)
cos_fi = nearfloat("succ",0.5751)
omega = nearfloat("succ",9.54)
fi = nearfloat("succ",5.33)

printf ("\n\n Total energy of system E = \n\n %.3f J",E)
printf ("\n\n Maximum amplitude of motion xm = \n\n %.4f m",xm)
printf ("\n\n Value of cos(fi) = \n\n %.4f",cos_fi)
printf ("\n\n Initial velocity = \n\n %.3f for fi = %.1f degree \n 0r \n %.3f for fi = %.1f degree",v_x1,fi1,v_x2,fi2)
printf ("\n\n Equation for x(t) = \n\n (%.3f m)*(cos(%.2f rad/s)t + %.2f rad)",xm,omega,fi)
