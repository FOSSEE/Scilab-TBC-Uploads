clc;
pathname=get_absolute_file_path('7_1_soln.sce')
filename=pathname+filesep()+'7_1_data.sci'
exec(filename)

// Solution:
// volumetric displacement,
V_D=%pi*((R_V^2)-(R_R^2))*L; //in^3
// pressure developed to overcome load,
p=2*%pi*T/V_D; //psi

// Results:
printf("\n  Results:  ")   
printf("\n The pressure developed to overcome load is %.0f psi.",p)





