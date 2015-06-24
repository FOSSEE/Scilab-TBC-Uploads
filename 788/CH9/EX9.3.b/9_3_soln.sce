clc;
pathname=get_absolute_file_path('9_3_soln.sce')
filename=pathname+filesep()+'9_3_data.sci'
exec(filename)

// Solution:
// spring force at full pump flow pressure,
F_spr_full=round(p_hydraulic*A_poppet); //lb
// spring force at cracking pressure,
F_spr_crack=round(p_cracking*A_poppet); //lb
// spring constant of compression spring,
k=(F_spr_full-F_spr_crack)/l_stroke; //lb/in
// initial compression of spring,
l=F_spr_crack/k; //in

// Results:
printf("\n  Results:  ")   
printf("\n The spring constant of compression spring is %.0f lb/in.",k)
printf("\n The initial compression of spring is %.3f in.",l)





