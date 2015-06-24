
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 7")
//Temperature of the oxidised surface in Kelvin
T=1800;
//Area of the oxidised surface in m^2
A=5e-3;
//Stefan–Boltzmann constant in W/m^2 K^4
sigma=5.67e-8;
disp("a)Emissivity perpendicular to the surface")
//Emissivity
epsilon_zero=0.70*cosd(0)
disp("b)Hemispherical emissivity")
//Hemispherical emissivity
epsilon_bar=((-1.4)/3)*((cosd(90))^3-(cosd(0))^3)
disp("c)Emissive Power in Watt")
//Emissive Power in W
E=epsilon_bar*A*sigma*T^4
