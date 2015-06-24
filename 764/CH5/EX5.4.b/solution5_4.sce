
//Obtain path of solution file
path = get_absolute_file_path('solution5_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_4.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Call fluctuate
[Ka, Kb, Kc] = fluctuate(op, d, reliability)
//Calculate the endurance stress limit for rod Sdash (N/mm2)
Sdash = (50/100)*Sut
//Calculate Se (N/mm2)
Se = Ka * Kb * Kc * Sdash
Sea = 0.8 * Se
//Calculate the permissible stress amplitude from equation 5.30 sigma (N/mm2)
sigma = Sea/fs
//Calculate the rod diameter d (mm)
d = ((Pa * 1000 * 4)/(%pi * sigma))^(1/2)
//Print results
printf('\nDiameter of the rod(d) = %f mm\n',d)
printf('\nAnswer is slightly different because of use of equation 5.18\n')
