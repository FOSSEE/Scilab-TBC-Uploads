clc;
pathname=get_absolute_file_path('3_15_soln.sce')
filename=pathname+filesep()+'3_15_data.sci'
exec(filename)

// Solution:
// Pump flow in m^3/s,
Q_si=0.0000167*Q; //m^3/s
// Hydraulic Power,
HP=p*Q_si; //kW

// Results:
printf("\n  Results:  ")   
printf("\n The Hydraulic power delivered by pump is %.2f kW.",HP)
