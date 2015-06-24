clc;
pathname=get_absolute_file_path('2_4_soln.sce')
filename=pathname+filesep()+'2_4_data.sci'
exec(filename)

// Solution:
// we know density,
// rho1=(mass of the Body/Volume of the Body)
rho1=(m/V); //slugs/ft^3
// also density,rho2=(specific weight/acceleration due to gravity)
g=32.2; //ft/s^2
gamma1=71.6; //lb/ft^3
rho2=(gamma1/g); //slugs/ft^3

// Results:
printf("\n  Results:  ")
printf("\n The Density of Body is %.2f slugs/ft^3.",rho1)
printf("\n The Density of Body is %.2f slugs/ft^3.",rho2)
