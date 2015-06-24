clc;
pathname=get_absolute_file_path('6_6_soln.sce')
filename=pathname+filesep()+'6_6_data.sci'
exec(filename)

// Solution:
// Area of blank end of piston,
A_piston=(%pi/4)*(D^2); //in^2
// piston velocity prior to deceleration,
v=(Q_pump/449)/(A_piston/144); //ft/s
// deceleration of piston at the end of extending stroke,
a=(v^2)/(2*(L/12)); //ft/s^2
// Area of cushion plunger,
A_cush=(%pi/4)*(D_cush^2); //in^2
// maximum pressure developed by the cushion,
p2=(((W*a)/32.2)+(p1*A_piston)-(CF*W))/(A_piston-A_cush); //psi

// Results:
printf("\n  Results:  ")   
printf("\n The maximum pressure developed by the cushion is %.0f psi.",p2)





