clc;
pathname=get_absolute_file_path('11_2_soln.sce')
filename=pathname+filesep()+'11_2_data.sci'
exec(filename)

// Solution:
// heat generation rate,
HP=(p*Q_gpm)/1714; //HP
// heat generation rate in Btu/min,
HP_btu=HP*42.4; //Btu/min
// oil flow-rate in lb/min,
Q_lb=7.42*Q_gpm; //lb/min
// temperature increase,
T_increase=HP_btu/(0.42*Q_lb); //deg F
// downward oil temperature,
T_downward=T_oil+T_increase; //deg F

// Results:
printf("\n  Results:  ")   
printf("\n The downstream oil temperature is %.1f deg F.",T_downward)
