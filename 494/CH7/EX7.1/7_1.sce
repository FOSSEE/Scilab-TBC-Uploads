//All the quantities are expressed in SI units

l = 5;                //dimensions of the room
b = 7;
h = 3.3;
V = l*b*h;            //volume of the room
p = 101000;           //ambient pressure
T = 273 + 25;         //ambient temperature
R = 287;              //gas constant
gam = 1.4;            //ratio of specific heats
cv = R/(gam-1);
cp = gam*R/(gam-1);

//the density can by calculaled by the ideal gas law
rho = p/R/T;

//thus the mass is given by
M = rho*V;

//from eq.(7.6a), the internal energy per unit mass is
e = cv*T;

//thus internal energy in the room is
E = e*M;

//from eq.(7.6b), the enthalpy per unit mass is given by
h = cp*T;

//Thus the enthalpy in the room is
H = M*h;

printf("\nRESULTS\n--------\nThe internal energy in the room is:\n        E = %1.2f x 10^7 J\n\nThe Enthalpy in the room is:\n        H = %1.2f x 10^7 J\n",E/10^7,H/10^7 )