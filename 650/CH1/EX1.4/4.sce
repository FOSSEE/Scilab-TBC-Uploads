clc
rho_0=800; //kg/m^3
rho_aq=1100; //kg/m^3

// rho_0*g*H=rho_aq*g*(H-0.5);

H=0.5*rho_aq/(rho_aq-rho_0);
disp("H=")
disp(H)
disp("m")

// For a fixed length of chamber of 3 m, the interface between the two phases is determined from the pressure in the chamber and discharge point.
// rho_0*g*H1+rho_aq*g*H2=rho_aq*g*(H-0.5);
// H=H1+H2

rho_0=600; //kg/m^3

H1=0.5*rho_aq/(rho_aq-rho_0);
disp("The lowest possible position of the inteiface in the chamber below the overflow.")
disp(H1)
disp("m")