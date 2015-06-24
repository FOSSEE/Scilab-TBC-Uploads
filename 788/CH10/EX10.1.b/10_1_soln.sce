clc;
pathname=get_absolute_file_path('10_1_soln.sce')
filename=pathname+filesep()+'10_1_data.sci'
exec(filename)

// Solution:
// flow-rate in ft^3/s,
Q_fps=Q/449; //ft^3/s
// minimum required pipe flow area,
A=(Q_fps/v)*144; //in^2
// minimum inside diameter,
D=sqrt((4*A)/(%pi)); //in

// Results:
printf("\n  Results:  ")   
printf("\n The minimum inside diameter of pipe is %.3f in.",D)










