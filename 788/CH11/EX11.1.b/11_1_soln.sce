clc;
pathname=get_absolute_file_path('11_1_soln.sce')
filename=pathname+filesep()+'11_1_data.sci'
exec(filename)

// Solution:
// high discharge pressure,
p_high_discharge=Ratio*p_low_inlet; //psi
// low discharge flow-rate,
Q_low_discharge=Q_high_inlet/Ratio; //gpm

// Results:
printf("\n  Results:  ")   
printf("\n The high discharge pressure is %.0f psi.",p_high_discharge)
printf("\n The low discharge flow-rate is %.0f gpm.",Q_low_discharge)
