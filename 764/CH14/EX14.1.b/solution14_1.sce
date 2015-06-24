
//Obtain path of solution file
path = get_absolute_file_path('solution14_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_1.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the velocity of the sprocket v (m/s)
v = z1 * p * n1/(60 * (10^3))
//Calculate the chain tension at the rated power P1 (N)
P1 = (1000 * kW)/v
//Calculate the factor of safety fs
fs = Pmax/P1
//Print results
printf("\nFactor of safety for standard power rating(fs) = %f\n",fs)
