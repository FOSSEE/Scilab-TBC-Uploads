
//Obtain path of solution file
path = get_absolute_file_path('solution12_14.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_14.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the initial angular velocity of the flywheel w1 (rad/s)
w1 = (2 * %pi * n)/60
//Calculate the KE of the flywheel KE (J)
KE = 0.5 * M * (k/1000)^2 * (w1^2 - w2^2)
//Calculate the temperature rise of the drum t (deg celsius)
t = KE/(m * c)
//Print results
printf("\nTemperature rise of the brake drum(t) = %f deg celsius\n",t)
printf("\nThe printed answer is erroneous\n")
