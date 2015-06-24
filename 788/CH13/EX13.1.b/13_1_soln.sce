clc;
pathname=get_absolute_file_path('13_1_soln.sce')
filename=pathname+filesep()+'13_1_data.sci'
exec(filename)

// Solution:
// volume of cylinder during retraction stroke,
V2=(V1-((%pi * D^2 * l_ret)/4)); //in^3
// absolute pressure on blank side,
p1=p1+14.7; //psia
// new pressure when blank side port is blocked,
// Boyle's Law,
p2=(p1*V1)/V2; //psia
p2=p2-14.7; //psig

// Results:
printf("\n  Results:  ")   
printf("\n The new pressure when blank side port is blocked is %.1f psig.",p2)
