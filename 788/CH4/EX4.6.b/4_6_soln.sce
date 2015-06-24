clc;
pathname=get_absolute_file_path('4_6_soln.sce')
filename=pathname+filesep()+'4_6_data.sci'
exec(filename)

// Solution:
// fluid velocity,
v=(Q/449)/((%pi*((D/12)^2))/4); //ft/s
// rounding off the above answer
v=fix(v)+(fix(floor((v-fix(v))*10))/10); //ft/s
// From table of "K factors of common valves and fittings",
K=10;
// acceleration due to gravity,
g=32.2; //ft/s^2
// Head Loss across globe valve,
H_L=(K*(v^2))/(2*g); //ft
// Pressure drop across Valve,
delp=SG_oil*0.0361*12*H_L; //psi

// Results:
printf("\n  Results:  ")
printf("\n The head loss across globe valve is %.1f ft of oil.",H_L)
