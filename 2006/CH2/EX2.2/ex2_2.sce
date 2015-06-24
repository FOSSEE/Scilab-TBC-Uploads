clc;
d_r = 13600; // Density of manometric fluid (mercury) in kg/m^3
g = 8.92; // Gravitational acceleration in m/s^2
z1=0.589*sind(60); // vertical height of fluid at section 1
z2=2*sind(30); // vertical height of fluid at section 2
z=z2-z1; // Difference in vertical heights of fluid
patm = 14.7; // Atmospheric pressure in lbf/in^2
patm=(patm*4.44822*144/0.3048^2); // conversion of lbf/in^2 unit to N/m^2 unit
p=patm + (d_r*g*(z2-z1)); // Balance of force at A
disp ("m",z,"Difference in vertical heights of fluid");
disp ("kPa",p/1000,"The pressure of fluid in the vessel");
