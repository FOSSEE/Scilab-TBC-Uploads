//Solution 11-3
WD=get_absolute_file_path('11_03_solution.sce');
datafile=WD+filesep()+'11_03_example.sci';
clc;
exec(datafile)
Re_L = V * L / nu; //Reynolds number at the end of the plate
//determination of average friction coefficient
if Re_L < Re_cr then
    C_f = 1.328 * Re_L**-0.5; //for laminar flow at the end of the plate
else
    C_f = 0.074/ Re_L**0.2 - 1742/ Re_L; //for turbuent flow the end of the plate
end
F_D = C_f * L * rho * V**2 / 2; //drag force per unit width
printf("The drag force acting on the top side of plate per unit width is %1.0f N.", F_D);