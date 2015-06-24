// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 3")
//Considering question 5.7
//A wall is exposed to nitrogen at one atmospheric pressure and temprature,Tinf=4°C.
Tinf=4;
//The wall is H=2.0m high and 2.5m wide and is maintained at temprature,Tw=56°C
Tw=56;
H=2;
B=2.5;
A=H*B;//Area of wall in m^2
//The properties of nitrogen at mean film temprature (56+4)/2=30°C are given as 
//density(rho=1.142kg/m^3) ,conductivity(k=0.026W/(m*K)),kinematic viscosity(nu=15.630*10^-6 m^2/s) ,prandtl number(Pr=0.713)
rho=1.142;
k=0.026;
nu=15.630*10^-6;
Pr=0.713;
Tf=30;//mean film temprature
Beta=1/(273+Tf);//volume expansion coefficient:unit K^-1
//Now Grashoff number is Grx=(g*Beta*(Tw-Tinf)*x^3)/nu^2
g=9.81;//acceleration due to gravity
disp("Grashoff number is")
x=0.8;//distance from the bottom of wall
Grx=(g*Beta*(Tw-Tinf)*x^3)/nu^2
//Using equation delta=x*Pr^(-0.5)*(0.952+Pr)^(0.25)*Grx^(-0.25)
//delta is the boundary layer thickness
disp("The boundary layer thickness in metre is")
delta=x*3.93*Pr^(-0.5)*(0.952+Pr)^(0.25)*Grx^(-0.25)
//Now using equation ux=(g*Beta*delta^2*(Tw-Tinf))/(4*nu)
//ux is the velocity at point x
disp("The velocity at point x is ux in m/s is")
ux=(g*Beta*delta^2*(Tw-Tinf))/(4*nu)
// (u/ux)=(y/delta)*(1-y/delta)^2
//Putting value of ux we get velovity function,u=465.9*(y-116*y^2+3341*y^3)
//For maximum value of u,du/dy=465.9*(1-232*y+10023*y^2)=0...this is a quadratic equation in which coefficients a=10023,b=232,c=1
a=10023;
b=232;
c=1;
//Solution for quadratic equation is given by y=(-b+-(b^2-4ac)^0.5)/2*a
disp("For maximum value of velocity,u")
y=(b+(b^2-4*a*c)^0.5)/(2*a)//root of the quadratic equation
y=(b-(b^2-4*a*c)^0.5)/(2*a)//root of the quadratic equation
//The value of 0.0173 is at the edge of boundary layer,where u=0
//Therefore the maximum value occurs at y=0.00573m i.e Umax=465.9*y*(1-57.8*y)^2
y=0.00573;
//Umax is maximum velocity
disp("Maximum velocity in m/s is")
Umax=465.9*y*(1-57.8*y)^2//NOTE:The answer given in the book is incorrect,in this expresssion they considered square on y only,however it is on whole expression (1-57.8*y)^2
//mdot is mass flow rate
disp("Mass flow rate at x=0.8m,in kG is")
mdot=rho*B*integrate("465.9*(y-116*y^2+3341*y^3)",'y',0,delta)








