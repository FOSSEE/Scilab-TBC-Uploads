clc;
pathname=get_absolute_file_path('10_3_soln.sce')
filename=pathname+filesep()+'10_3_data.sci'
exec(filename)

// Solution:
// wall thickness,
t=(Do-Di)/2; //in
// burst pressure,
BP=(2*t*S)/Di; //psi
// working pressure,
WP=BP/FS; //psi

// Results:
printf("\n  Results:  ")   
printf("\n The working pressure of steel tube is %.0f psi.",WP)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")

