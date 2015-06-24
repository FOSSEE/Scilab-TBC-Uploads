
//Obtain path of solution file
path = get_absolute_file_path('solution3_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data3_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nMaximum diameter of bush is: %f mm\n',(Db + Ub))
printf('\nMinimum diameter of bush is: %f mm\n',(Db + Lb))
printf('\nMaximum diameter of crankpin is: %f mm\n',(Dc + Uc))
printf('\nMinimum diameter of crankpin is: %f mm\n',(Dc + Lc))
printf('\nMaximum clearance is: %f mm\n',((Db + Ub)-(Dc + Lc)))
printf('\nMinimum clearance is: %f mm\n',((Db + Lb)-(Dc + Uc)))
