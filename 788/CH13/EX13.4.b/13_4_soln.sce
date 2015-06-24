clc;
pathname=get_absolute_file_path('13_4_soln.sce')
filename=pathname+filesep()+'13_4_data.sci'
exec(filename)

// Solution:
// final pressure in the cylinder,
// General Gas Law, 
p2=((p1+14.7)*V1*(T2+460))/(V2*(T1+460))-14.7; //psig

// Results:
printf("\n  Results:  ")   
printf("\n The final pressure in the cylinder is %.1f psig.",p2)
