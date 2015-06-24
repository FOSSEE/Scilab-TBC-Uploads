clc;
pathname=get_absolute_file_path('13_5_soln.sce')
filename=pathname+filesep()+'13_5_data.sci'
exec(filename)

// Solution:
// final pressure in the cylinder in absolute units,
// General Gas Law, 
p2=(((p1+1)*10^5*V1*(T2+273))/(V2*(T1+273)))/10^5; //bars

// Results:
printf("\n  Results:  ")   
printf("\n The final pressure in the cylinder is %.1f bars absolute.",p2)
