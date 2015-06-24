clc;
pathname=get_absolute_file_path('4_7_soln.sce')
filename=pathname+filesep()+'4_7_data.sci'
exec(filename)

// Solution:
// fluid velocity,
v=Q/((%pi*((D/1000)^2))/4); //m/s
// rounding off the above answer
v=fix(v)+(fix(round((v-fix(v))*10))/10); //m/s
// From table of "K factors of common valves and fittings",
K=0.19;
// acceleration due to gravity,
g=9.80; //m/s^2
// Head Loss across globe valve,
H_L=(K*(v^2))/(2*g); //m
// Pressure drop across Valve,
delp=(gamma1*H_L)/1000; //kPa

// Results:
printf("\n  Results:  ")
printf("\n The head loss across globe valve is %.2f m of oil.",H_L)

