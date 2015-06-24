clc;
pathname=get_absolute_file_path('8_1_soln.sce')
filename=pathname+filesep()+'8_1_data.sci'
exec(filename)

// Solution:
// spring force excerted on poppet when it is fully closed,
F=k*S; //lb
// Cracking pressure,
p_crack=F/A; //psi
// spring force when poppet moves 0.10 in from its fully closed position,
F_new=k*(L+S); //lb
// Full pump flow pressure,
p_ful_pump_flow=F_new/A; //psi
  
// Results:
printf("\n  Results:  ")   
printf("\n The Cracking pressure is %.0f psi.",p_crack)
printf("\n The Full pump flow pressure  is %.0f psi.",p_ful_pump_flow)






