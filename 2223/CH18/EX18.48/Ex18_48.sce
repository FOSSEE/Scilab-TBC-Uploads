// scilab Code Exa 18.48 Calculation on a Draft Tube 

pa=1.013; // atmospheric pressure in bar
p3=0.4*pa; // turbine exit pressure in bar
rho=1e3; // density in kg/m3
g=9.81; // Gravitational acceleration in m/s^2
n_D=0.82; // Efficiency of the Draft Tube
delHi=3.1058869; // from Ex 18.5
// part(b)
Hd=delHi;
Hs=((pa-p3)*1e5/(rho*g))-(n_D*Hd); // Hs=Z3-Z4
disp("m",Hs,"(b)the suction head(height of the turbine exit above the tail race) is")
disp("comment: the calculation for Hs is done wrongly in the book. hence the value of Hs differs from the book.")
