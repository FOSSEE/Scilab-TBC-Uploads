clc;

printf("Example 3.3\n");
Dia_tank=5; //Diameter of the tank
len_pipe=100; //Length of pipe
dia_pipe=225e-3; //Diameter of pipe
printf("\n Given:\n Diameter of the tank = %d m\n Length of pipe = %d m\n Diameter of pipe = %.2f m",Dia_tank,len_pipe,dia_pipe);

//If at time t the liquid level is D m above the bottom of the tank, then 
// designating point 1 as the liquid level and point 2 as the pipe outlet,
// and applying the energy balance equation (2.67) for turbulent flow, then:

// The equation becomes (u2^2/2)-D*g+(4*R*len_pipe*u2^2/(rho*u^2*dia_pipe))

//As the level of liquid in the tank changes from D to (D + dD), the quantity
// of fluid discharged = (pi/4)5^2(-dD) = -19.63dD m^3.
// The time taken for the level to change by an amount dD is given by:
//dt=19.63dD/((pi/4)0.225^2 x 4.43D^0.5/([l + 3552(/R/rho*u^2)])^0.5)

// calculating the value of X=R/rho*u^2 as given in example (refer to book)
X=.0020;
t=integrate('111.5*(1+(3552*X))^0.5*D^-0.5','D',0.3,3);
printf("\n\n The time taken for the level to fall is therefore about %d s",t);