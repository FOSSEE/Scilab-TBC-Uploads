clc;
pathname=get_absolute_file_path('5_5_soln.sce')
filename=pathname+filesep()+'5_5_data.sci'
exec(filename)

// Solutions:
// Hydraulic Power lost in Fixed Displacemnt pump,
HP_f=(p*Q_f)/1714; //HP
// Hydraulic Power lost in Pressure Compensated pump,
HP_p=(P*Q_p)/1714; //HP
// Therefore, Hydraulic Power saved,
HP=HP_f-HP_p; //HP

// Results:
printf("\n  Results:  ")
printf("\n The Hydraulic Power saved after cylinder is fully extended is %.2f HP.",HP)


