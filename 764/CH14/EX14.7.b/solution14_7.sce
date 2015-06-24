
//Obtain path of solution file
path = get_absolute_file_path('solution14_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_7.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the power to be transmitted kWd
kWd = kW * K1 * K2/Ks
//Calculate the velocity of the driving sprocket v (m/s)
v = z1 * p * n1/(60000)
//Calculate the tension in the chain P1
P1 = 1000 *kWd/v
//Calculate the factor of safety fs
fs = Pb/P1
//Print results
printf("\nRated power for which the chain drive can be recommended(kWd) = %f kW\n",kWd)
printf("\nTension in the chain(P1) = %f N\n",P1)
printf("\nFactor of safety for the chain based on the breaking load(fs) = %f\n",fs)
