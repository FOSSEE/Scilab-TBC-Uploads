clc;
pathname=get_absolute_file_path('3_7_soln.sce')
filename=pathname+filesep()+'3_7_data.sci'
exec(filename)

// Solution:
// we know, Discharge=Area*Velocity
A1=(%pi/4)*(D1/12)^2; //ft^2
Q=A1*v1; //ft^3/s
// Since, for hydraulic system, volume flow rate is always constant
// we get,outlet velocity,
v2=((D1/D2)^2)*v1; //ft/s

// Results:
printf("\n  Results:  ")  
printf("\n The Volume flow rate of the system is %.3f ft^3/s.",Q)
printf("\n The fluid velocity at station 2 is %.0f ft/s.",v2)