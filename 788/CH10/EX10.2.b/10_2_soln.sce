clc;
pathname=get_absolute_file_path('10_2_soln.sce')
filename=pathname+filesep()+'10_2_data.sci'
exec(filename)

// Solution:
// minimum required pipe flow area,
A=(Q/v); //m^2
// minimum inside diameter,
D=sqrt((4*A)/(%pi))*1000; //mm

// Results:
printf("\n  Results:  ")   
printf("\n The minimum inside diameter of pipe is %.1f mm.",D)










