
//Obtain path of solution file
path = get_absolute_file_path('solution7_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_12.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the moment arm for load P l (mm)
l = (r - a)
//Calculate the absolute maximum force Pmax (N)
Pmax = (2 * P * 1000 * l * (a + b))/(n * ((2 * (a^2)) + (b^2)))
//Calculate the core cross-section area of the cap screw A (mm2)
A = Pmax/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
