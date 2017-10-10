////
//Varialble Declaration
gama = 71.99e-3   //Surface tension of water, N/m
r = 2e-5          //Radius of xylem, m
theta = 0.0       //Contact angle, rad
rho = 997.0       //Density of water, kg/m3
g = 9.81          //gravitational acceleration, m/s2
H = 100           //Height at top of redwood tree, m

//Calculations
h = 2*gama/(rho*g*r*cos(theta))

//Results
printf("\n Height to which water can rise by capillary action is %3.2f m",h)

printf("\n This is very less than %4.1f n, hence water can not reach top of tree",H)

