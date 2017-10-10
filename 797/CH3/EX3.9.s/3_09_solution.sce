//Solution 3-09
WD=get_absolute_file_path('3_09_solution.sce');
datafile=WD+filesep()+'3_09_example.sci';
clc;
exec(datafile)
//(a)
s = h_bottom - R; //distance of cylinder top from water surface
F_h = rho * g * (s + R / 2) * R; //horizontal force acting on vericle surface of cylinder
F_y= rho * g * h_bottom * R; //vericle for acting on cylinder
W = rho * g * R**2 * (1 - %pi / 4); //weight of fluid block per m width
F_v = F_y - W; //net upward force
F_R = sqrt(F_v**2 + F_h**2); //magnitude of resultant force
theta = atan(F_v / F_h) * 180 / %pi; //angle made by resultant with horizontal
printf("Resultant hydrostatic force acting on cylinder is %1.2f kN", F_R/1000);
printf("\nAngle made by hydrostatic force with horizontal is %1.2f degrees", theta);
//(b)
W_cyl = F_R * sin(theta * %pi / 180); //equating moment at hinge to zero
printf("\nWeight of cylinder per m length is %1.2f kN", W_cyl/1000);