clc;
pathname=get_absolute_file_path('9_4_soln.sce')
filename=pathname+filesep()+'9_4_data.sci'
exec(filename)

// Solution:
// flow-rate through valve,
Q=Cv*sqrt((p_PRV-(F_load/A_piston))/SG); //gpm
// flow-rate through valve in in^3/s,
Q=(Q*231)/60; //in^3/s
// cylinder speed,
v_cyl=Q/A_piston; //in/s

// Results:
printf("\n  Results:  ")   
printf("\n The cylinder speed is %.1f in/s.",v_cyl)
