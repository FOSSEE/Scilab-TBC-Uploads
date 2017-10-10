clc; funcprot(0);
//Example 8.14  Moment Coefficient and center of pressure

// Initialisation of variables
alpha = 2;
V = 120;
b = 42;
c = 7;
rho = 0.002378;

// Calculations
S = b*c;
Cl = 0.295;     //From fig 8.13
Cd = 0.0156;    //From fig 8.13
CP = .36;       //From fig 8.13
CMo = -CP*(Cl*cosd(alpha)+Cd*sind(alpha));
Mo = CMo*C*S*V^2*(rho/2);

//Results 
disp(Mo,"Moment about leading edge (ft-lb):");
