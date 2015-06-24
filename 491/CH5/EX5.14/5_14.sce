b = 0.165 ; // in m
h = 0.320 ; // in m
h1 = 0.290 ; // in m
t = 0.0075; //  in m
V = 45000; // Vertical force in N
I = (1/12)*((b*(h^3))-(b*(h1^3))+(t*(h1^3))) // Moment of inertia of the cros section
t_max = (V/(8*I*t))*((b*(h^2))-(b*(h1^2))+(t*(h1^2))); // Maximum shear stress in Pa
t_min = ((V*b)/(8*I*t))*(h^2-h1^2); // Minimum shear stress in Pa
T = ((t*h1)/3)*(2*t_max + t_min); // Total shear force in Pa
t_avg = V/(t*h1) ; // Average shear stress in Pa
disp("Pa",t_max,"Maximum shear stress in the web is")
disp("Pa",t_min,"Minimum shear stress in the web is")
disp("Pa",T,"Total shear stress in the web is")
