//Finding of Elevation
//Given
//At Sea level
p=760;    //pressure in mm of mercury
rho=1000; //Density in kg/m^3
spgr=13.6; 
g=9.81; //gravitational force in m/sec^2
p1=(p/1000)*rho*g*spgr;
//At Mountain
p2=735;
p3=(p2/1000)*rho*g*spgr;
rho1=1.2;
//To Find
h=(p1-p3)/(rho1*g);
disp("Elevation is ="+string(h)+" meter");
