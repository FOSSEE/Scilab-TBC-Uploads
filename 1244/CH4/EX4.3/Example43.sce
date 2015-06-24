

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 4 Example # 4.3 ")

// Width of the collector plate in ft is given:
b = 1;
// Surface temperature in F is given:
Ts = 140;
// Air temperature in F is given:
Tinfinity = 60;
// Air velocity in ft/sec is given as:
Uinfinity = 10;
// Average temperature in degree F is given as:
T = (Ts+Tinfinity)/2;
// Properties of air at average temperature are as follows

Pr = 0.72; //Prandtl number
k = 0.0154; // Thermal conductivity in Btu/h ft °F
mu = 1.285*10-5;  //Viscosity in lbm/ft s
cp = 0.24; //Specific heat in Btu/lbm °F
rho = 0.071; //Density in lbm/ft3

// Reynold''s number at x=1ft is
Re1 = ((Uinfinity*rho)*1)/mu;
// Reynold''s number at x=9ft is
Re9 = ((Uinfinity*rho)*1)/mu;
// Assuming that the critical Reynolds number is 5*10^5, the critical distance is
//Critical Reynolds number
Rec = 5*(10^5);
//Critical distance in ft
xc = (Rec*mu)/(Uinfinity*rho);

// From Eq. 4.28, and using the data obtained, we get for part a:
disp("Delta at x=1ft to be 0.0213ft and at x=9ft to be 0.0638ft")

// From Eq. 4.30, and using the data obtained, we get for part b:
disp("Cfx at x=1ft to be 0.00283 and at x=9ft to be 0.000942")

// From Eq. 4.31, and using the data obtained, we get for part c:
disp("Cfbar at x=1ft to be 0.00566 and at x=9ft to be 0.00189")

// From Eq. 4.29, and using the data obtained, we get for part d:
disp("Tau at x=1ft to be 3.12*10^-4 lb/ft^2 and at x=9ft to be 1.04*10^-4 lb/ft^2")

// From Eq. 4.32, and using the data obtained, we get for part e:
disp("DeltaTH at x=1ft to be 0.0237ft and at x=9ft to be 0.0712ft")

// From Eq. 4.36, and using the data obtained, we get for part f:
disp("hcx at x=1ft to be 1.08Btu/hft^2°F and at x=9ft to be 0.359Btu/hft^2°F")

// From Eq. 4.39, and using the data obtained, we get for part g:
disp("hcbar at x=1ft to be 2.18Btu/hft^2°F and at x=9ft to be 0.718Btu/hft^2°F")

// From Eq. 4.35, and using the data obtained, we get for part h:
disp("q at x=1ft to be 172 Btu/h and at x=9ft to be 517 Btu/h")
