clc;
pathname=get_absolute_file_path('13_2_soln.sce')
filename=pathname+filesep()+'13_2_data.sci'
exec(filename)

// Solution:
// initial temperature of air in Rankine,
T1=T1+460; //deg R
// final temperature of air in Rankine,
T2=T2+460; //deg R
// final volume of air,
// Charle's Law,
V2=(T2/T1)*V1; //in^3

// Results:
printf("\n  Results:  ")   
printf("\n The final volume of air is %.1f in^3.",V2)
