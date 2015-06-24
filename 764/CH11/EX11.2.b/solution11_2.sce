
//Obtain path of solution file
path = get_absolute_file_path('solution11_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data11_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nApplying uniform-pressure criterion\n')
//Evaluate total operating force P (N)
P = (%pi * Pa)*((D^2)-(d^2))/4
//Evaluate torque transmitting capacity Mt (N-mm)
Mt = (mu * P * ((D^3)-(d^3)))/(3 * ((D^2)-(d^2)))
//Evaluate power transmitting capacity kW 
kW = (2 * %pi * n * Mt)/(60 * (10^6))
//Print results
printf('\nResults\n')
printf('\nTotal operating force (P) = %f N\n',P)
printf('\nTorque transmitting capacity by friction(Mf) = %f N-mm\n',Mt)
printf('\nPower transmitting capacity of the clutch = %f kW\n',kW)