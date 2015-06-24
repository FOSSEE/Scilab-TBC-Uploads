clc;
pathname=get_absolute_file_path('4_8_soln.sce')
filename=pathname+filesep()+'4_8_data.sci'
exec(filename)

// Solution:
// velocity through steel pipes,
v=(Q/449)/((%pi*((D/12)^2))/4); //ft/s
// rounding off the above answer
v=fix(v)+(fix(floor((v-fix(v))*10))/10); //ft/s
// Reynolds Number,
N_R=(7740*v*D)/nu;
// friction factor,
f=64/N_R;
// From table of "K factors of common valves and fittings",
K=10;
// Equivalent Length,
Le=(K*(D_l/12))/f; //ft

// Results:
printf("\n  Results:  ")
printf("\n The Equivalent Length of Globe valve is %.1f ft.",Le)
