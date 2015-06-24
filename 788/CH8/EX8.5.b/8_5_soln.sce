clc;
pathname=get_absolute_file_path('8_5_soln.sce')
filename=pathname+filesep()+'8_5_data.sci'
exec(filename)

// Solution:
// capacity coefficient in English Units,
Cv=Q/sqrt(del_p/SG_oil); //gpm/sqrt(psi)
// capacity coefficient in Metric Units,
Cv1=Q1/sqrt(del_p1/SG_oil); //Lpm/sqrt(kPA)

// Results:
printf("\n  Results:  ")   
printf("\n The capacity coefficient in English unit is %.2f gpm/sqrt(psi).",Cv)
printf("\n The capacity coefficient in Metric unit is %.2f Lpm/sqrt(kPa).",Cv1)











