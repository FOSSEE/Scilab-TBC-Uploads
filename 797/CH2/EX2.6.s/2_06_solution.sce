//Solution 2-6
WD=get_absolute_file_path('2_06_solution.sce')
datafile=WD+filesep()+'2_06_example.sci'
clc;
exec(datafile)
//conversion
D = D / 1000; //from [mm] to [m]
phi = phi * %pi /180; //from [degree] to [radians]

R = D / 2;
h = 2 * sigma_s * cos(phi) / (rho * g * R); //from capilary rise equation
h = h * 100; //conversion from [m] to [cm]
printf("Water rises in the tube %1.0f cm above the liquid level in the cup", h);