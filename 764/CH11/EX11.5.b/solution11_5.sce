
//Obtain the path of solution file
path = get_absolute_file_path('solution11_5.sce')
//Obtain the path of data file
datapath = path + filesep() + 'data11_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Consider the factor of safety fs, Mt is in N-m
Mt = fs * Mt
//For maximum torque transmission, d/D = 0.577
ratio = 0.577
//Evaluate inner diameter of the friction disk d (mm)
d = ((8 * Mt * 1000)/(%pi * mu * Pa * (10^-3) * 2))^(1/3)
//Evaluate outer diameter of the friction disk from ratio D (mm)
D = d/ratio
//Print results
printf('\nResults\n')
printf('\nInner diameter of the friction lining(d) = %f mm\n',d)
printf('\nOuter diameter of the friction lining(D) = %f mm\n',D)
