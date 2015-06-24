clc;
pathname=get_absolute_file_path('5_6_soln.sce')
filename=pathname+filesep()+'5_6_data.sci'
exec(filename)

// Solutions:
// Theoretical flow rate,
Qt=Qa/(eta_v/100); //gpm
// Area of piston,
A=(%pi/4)*(d^2); //in^2
// tan of offset angle,
T_theta=(231*Qt)/(D*A*N*Y); 
// offset angle,
theta=atand(T_theta); //deg

// Results:
printf("\n  Results:  ")
printf("\n The offset angle of axial piston pump is %.1f deg.",theta)

