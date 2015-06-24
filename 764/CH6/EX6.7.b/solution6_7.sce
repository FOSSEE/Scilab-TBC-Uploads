
//Obtain path of solution file
path = get_absolute_file_path('solution6_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate lead of the screw l (mm)
l = n * p
//Calculate the mean diameter of the screw dm (mm)
dm = d - (0.5 * p)
//Calculate the lead angle alpha (degree)
alpha = atand(l/(%pi * dm))
//Calculate the angle of repose fi (degree)
fi = atand(mu)
//Calculate the torque required Mt (N-mm)
Mt = (W * dm * tand(fi + alpha))/2
//Calculate the torque applied to overcome the friction at collar surface Mtc (N-mm)
Mtc = (mu * W * rm)
//Calculate the total external torque required MTotal (N-mm)
MTotal = Mt + Mtc
//Calculate the rpm of the screw N
N = (v * 1000)/p
//Calculate the power required to drive the screw kW
kW = (2 * %pi * N * MTotal)/(60 * (10^6))
//Calculate the efficiency of the mechanism eta (%)
eta = ((W * l)/(2 * %pi * MTotal))*100
//Print results
printf('\nThe power required to drive the screw(kW) = %f kW\n',kW)
printf('\nEfficiency of the mechanism(eta) = %f percent\n',eta)
