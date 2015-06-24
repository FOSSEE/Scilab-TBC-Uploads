clc;
pathname=get_absolute_file_path('13_3_soln.sce')
filename=pathname+filesep()+'13_3_data.sci'
exec(filename)

// Solution:
// initial temperature of air in Rankine,
T1=T1+460; //deg R
// final temperature of air in Rankine,
T2=T2+460; //deg R
// absolute initial pressure,
p1=p1+14.7; //psia
// final pressure of air,
// Gay-Lussac's Law,
p2=(T2/T1)*p1; //psia
p2=p2-14.7; //psig

// Results:
printf("\n  Results:  ")   
printf("\n The final pressure of air at constant volume is %.1f psig.",p2)
