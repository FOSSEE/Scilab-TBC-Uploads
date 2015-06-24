clc;
pathname=get_absolute_file_path('11_3_soln.sce')
filename=pathname+filesep()+'11_3_data.sci'
exec(filename)

// Solution:
// heat generation rate,
kW=((p*10^5)*Q)/1000; //kW
// oil flow-rate,
Q_kg_s=895*Q; //kg/s
// temperature increase,
T_increase=kW/(1.8*Q_kg_s); //deg C
// downward oil temperature,
T_downward=T_oil+T_increase; //deg C

// Results:
printf("\n  Results:  ")   
printf("\n The downstream oil temperature is %.1f deg C.",T_downward)
