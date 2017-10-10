//Solution 3-13
WD=get_absolute_file_path('3_13_solution.sce');
datafile=WD+filesep()+'3_13_example.sci';
clc;
exec(datafile)
H = H / 100; //converting height from [cm] to [m]
R = D / 2 / 100; //radius of cylinder [m]
h_0 = h_0 / 100;
omega = sqrt(4 * g * (H - h_0) / R**2); //from equation for the free surface of liquid
ndot = omega / (2 * %pi) * 60; //rotational speed [rpm]
printf("Rotational speed of the container must be restricted to %1.2f rpm to avoid any spill of liquid as a result of centrifugal effect", ndot);
z_0 = h_0 - omega^2 * R^2 / (4 * g); //height of liquid at the center [m]
printf("\nHeight of liquid at the center is %1.2f m>0 hence our assumption is valid", z_0);
