clc;
pathname=get_absolute_file_path('8_4_soln.sce')
filename=pathname+filesep()+'8_4_data.sci'
exec(filename)

// Solution:
// flow-rate through orifice,
Q=38.1*C*((%pi*(D^2))/4)*sqrt(del_p/SG_oil); //gpm

// Results:
printf("\n  Results:  ")   
printf("\n The flow-rate through orifice is %.0f gpm.",Q)














