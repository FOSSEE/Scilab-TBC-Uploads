clc;
pathname=get_absolute_file_path('8_6_soln.sce')
filename=pathname+filesep()+'8_6_data.sci'
exec(filename)

// Solution:
// annular area of cylinder,
A2=A1-Ar; //in^2
// back pressure in the rod end,
p2=((p1*A1)-F_load)/A2; //psi
// flow rate through needle valve based on desired cylinder speed,
Q=(A2*v2*60)/231; //gpm
// capacity coefficient of needle valve,
Cv=Q/sqrt(p2/SG_oil); //gpm/sqrt(psi)

// Results:
printf("\n  Results:  ")   
printf("\n The capacity coefficient of needle valve is %.2f gpm/sqrt(psi).",Cv)













