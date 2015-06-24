clc;
pathname=get_absolute_file_path('3_14_soln.sce')
filename=pathname+filesep()+'3_14_data.sci'
exec(filename)

// Solution:
// Pump flow in m^3/s,
Q_si=0.0000167*Q; //m^3/s
// Diameter of pipe,
D_m=D/1000; //m
// Area of pipe,
A=(%pi*(D_m^2))/4; //m^2
// velocity,
v=Q_si/A; //m/s
// rounding off the above answer
v=fix(v)+(fix(floor((v-fix(v))*100))/100); //m/s

// Results:
printf("\n  Results:  ")   
printf("\n The velocity through pipe is %.2f m/s.",v)
