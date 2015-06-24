clc; funcprot(0); //Example 12.6 

//Initializing the variables
c = 2;
s = 10;
rho = 5.33;
rho_ellip = 1.2;
D = 400;
L = 45000;
scale = 20;
U_windTunnel = 500;
U_proto = 400*1000/3600;

//Calculations
A = c*s;
U_model = U_windTunnel/scale;
Cd = D/(0.5*rho*U_model^2*A);
Cl = L/(0.5*rho_ellip*U_proto^2*A); // Considering elliptical Lift model
Cdi = Cl^2/(%pi*s/c); // Aspect Ratio =  s/c 
Cdt = Cd + Cdi;
Dw = 0.5*Cdt*rho_ellip*U_proto^2*A;
disp(Dw/1000, "Total drag on full sized wing (kN) :");