clc;
pathname=get_absolute_file_path('9_2_soln.sce')
filename=pathname+filesep()+'9_2_data.sci'
exec(filename)

// Solution:
// Unloading Valve:
// load due to back pressure force on cylinder,
F_back_pressure=(p_loss2*%pi*((Dp^2)-(Dr^2)))/4; //psi
// back pressure force on cylinder,
P_cyl_blank_end=F_back_pressure/((%pi*(Dp^2))/4); //psi
// pressure setting of the unloading valve,
p_unload=1.5*(P_cyl_blank_end+p_loss1); //psi

// Pressure Relief Valve:
// pressure to overcome punching operations,
P_punching=F_load/((%pi*(Dp^2))/4); //psi
// pressure setting of the pressure relief valve,
p_prv=1.5*P_punching; //psi

// Results:
printf("\n  Results:  ")   
printf("\n The pressure setting of unloading valve is %.0f psi.",p_unload)
printf("\n The pressure setting of pressure relief valve is %.0f psi.",p_prv)





