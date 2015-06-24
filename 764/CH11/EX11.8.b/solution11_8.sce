
//Obtain path of solution file
path = get_absolute_file_path('solution11_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data11_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nApplying uniform-wear theory\n')
//Evaluate the total operating force P (N)
P = ((%pi * Pa * d)*(D - d))/2
//Evaluate number of pairs of contacting surfaces z
z = s + b -1
//Evaluate the torque transmitting capacity of the clutch Mt (N-mm)
Mt = ((mu * P * z)*(D + d))/4
//Evaluate power transmitting capacity of the clutch kW
kW = (2 * %pi * n * Mt)/(60 * (10^6))
//Print results
printf('\nResults\n')
printf('\nThe total operating force(P)= %f N\n',P)
printf('\nNumber of pairs of contacting surfaces(z)= %f\n',z)
printf('\nThe torque transmitting capacity of the clutch(Mf)= %f N-mm\n',Mt)
printf('\nThe power transmitting capacity of the clutch(kW)= %f\n',kW)
 