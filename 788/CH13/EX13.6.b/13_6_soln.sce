clc;
pathname=get_absolute_file_path('13_6_soln.sce')
filename=pathname+filesep()+'13_6_data.sci'
exec(filename)

// Solution:
// cfm of free air compressor must be provided,
Q1=Q2*((p2+14.7)/14.7)*((T1+460)/(T2+460)); //cfm

// Results:
printf("\n  Results:  ")   
printf("\n The cfm of free air compressor must be provided is %.0f cfm of free air.",Q1)
