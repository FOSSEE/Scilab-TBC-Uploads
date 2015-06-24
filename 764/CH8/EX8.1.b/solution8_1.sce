
//Obtain path of solution file
path = get_absolute_file_path('solution8_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the length of the welded joint l (mm)
l = %pi * D * 1000
//Calculate the tensile force on the plates P (N)
P = sigmat * t * l * eta
//Calculate the allowable internal pressure p (N/mm2)
p = P/((%pi/4)*((D*1000)^2))
//Print results
printf('\nThe allowable internal pressure(p) = %f N/mm2\n',p)
