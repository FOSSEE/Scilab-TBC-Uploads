clc;
pathname=get_absolute_file_path('3_12_soln.sce')
filename=pathname+filesep()+'3_12_data.sci'
exec(filename)

// Solution:
// Acceleration due to gravity,
g=32.2; //ft/s^2
// Jet velocity through siphon,
v2=sqrt(2*g*(h-Hl)); //ft/s
// rounding off the above answer
v2=fix(v2)+(fix(floor((v2-fix(v2))*10))/10); //ft/s
// Area of the U tube,
A=(%pi/4)*((d/12)^2); //ft^2
// flow rate through siphon,
Q=A*v2; //ft^3/s
Q_gpm=449*Q; //gpm
// rounding off the above answer
Q_gpm=fix(Q_gpm)+(fix(floor((Q_gpm-fix(Q_gpm))*10))/10); //gpm

// Results:
printf("\n  Results:  ")  
printf("\n The velocity through siphon is %.1f ft/s.",v2)
printf("\n The Flow rate through siphon is %.1f gpm.",Q_gpm)
