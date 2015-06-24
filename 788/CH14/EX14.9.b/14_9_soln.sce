clc;
pathname=get_absolute_file_path('14_9_soln.sce')
filename=pathname+filesep()+'14_9_data.sci'
exec(filename)

// Solutions:
// atmospheric pressure,
p_atm=101000; //Pa
// lip outside area of suction cup,
Ao=(%pi/4)*(Do/1000)^2; //m^2
// lip inside area of suction cup,
Ai=(%pi/4)*(Di/1000)^2; //m^2
// required vacuum pressure,
p=((p_atm*Ao)-((F*f)/N))/Ai; //Pa abs
// flow-rate to be delivered by vacuum pump,
Q=(V/t)*log(p_atm/p); //m^3/min
// rounding off the above answer
Q=fix(Q)+(fix(ceil((Q-fix(Q))*10000))/10000); //m^3/min

// Results:
printf("\n  Results:  ")
printf("\n The flow-rate of air to be delivered by vacuum pump is %.4f m^3/min.",Q)