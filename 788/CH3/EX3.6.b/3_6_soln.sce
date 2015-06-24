clc;
pathname=get_absolute_file_path('3_6_soln.sce')
filename=pathname+filesep()+'3_6_data.sci'
exec(filename)

// Solution:
// booster input force = booster output force
// p1*A1 = p2*A2
p2=(A1/A2)*p1; //psi
// As per pascal law,
p3=p2; // where p3=outlet pressure
// Therefore load carrying capacity of system,
F=p3*A3; //lb

// Results:
printf("\n  Results:  ")  
printf("\n The load carrying capacity of system is %.0f lb.",F)
