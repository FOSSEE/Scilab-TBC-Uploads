
//Obtain path of solution file
path = get_absolute_file_path('solution11_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data11_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Evaluate total operating force P (N)
P = ((%pi * Pa * d)*(D - d))/2
//Evaluate number of contacting surfaces z
z = (4 * Mt * 1000)/(mu * P * (D + d))
//Considering the effect of radial slots
z = z * (1 + (r / 100))
//Round up z
z = ceil(z)
//Print results
printf('\nApplying uniform-wear theory\n')
printf('\nResults\n')
printf('Total operating force(P)= %f N\n',P)
printf('Required number of contacting surfaces(z)= %f\n',z)
