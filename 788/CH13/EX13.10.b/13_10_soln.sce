clc;
pathname=get_absolute_file_path('13_10_soln.sce')
filename=pathname+filesep()+'13_10_data.sci'
exec(filename)

// Solution:
// upstream temperature in Rankine,
T1=T1+460; //deg R
// absolute upstream pressure,
p1=p1+14.7; //psia
// for maximum flow-rate,
// absolute downstream pressure,
p2=0.53*p1; //psia
// volume flow-rate,
Q=floor(22.7*Cv*sqrt(((p1-p2)*p2)/T1)); //scfm

// Results:
printf("\n  Results:  ")   
printf("\n The maximum flow-rate is %.0f scfm of air.",Q)

