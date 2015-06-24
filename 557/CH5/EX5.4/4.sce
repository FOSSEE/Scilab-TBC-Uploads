clc;funcprot(0);
//Example 5.4

//Initializing the variables 
v1 = 36 ;    //Exit velocity
u = 15;        //Velocity of vane\
x = 30;        // Angle between vanes and flow
rho = 1000;     // Density of water
d = .1;        // Diameter of jet

//Calculations
alp = atand(v1*sind(x)/(v1*cosd(x)-u));
v2 = 0.85*v1*sind(x);
bta =  acosd(u*sind(alp)/v2);
m = (rho*%pi*v1*d^2)/4;
Vin = v1*cosd(x);
Vout = v2*cosd(90);
Rx = m*(Vin-Vout);

disp( Rx ,"Force exerted by vanes(N ) :",bta,"Outlet Angle(Degree):",alp,"Inlet Angle(Degree): ") ;
 