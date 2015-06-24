clc;
pathname=get_absolute_file_path('13_12_soln.sce')
filename=pathname+filesep()+'13_12_data.sci'
exec(filename)

// Solution:
// atmospheric temperature in deg Rankine,
T1=T1+460; //deg R
// temperature of air in deg Rankine in pneumatic cylinder,
T2=T2+460; //deg R
// absolute pneumatic cylinder pressure,
p2=p2+14.7; //psia
// the volume per minute of air consumed by cylinder,
Q2=(%pi/4)*(d/12)^2*(L/12)*N; //ft^3/min
// air consumption rate,
Q1=Q2*(p2/p1)*(T1/T2); //scfm

// Results:
printf("\n  Results:  ")   
printf("\n The air consumption rate in scfm is %.2f.",Q1)
