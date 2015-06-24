
//Obtain path of solution file
path = get_absolute_file_path('solution6_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_6.sci'
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
//Calculate the torque required Mt (N-mm)
Mt = ((W * 1000 * dm)*((mu1 * secd(theta)) + tand(alpha)))/(2 * (1 - (mu1 * secd(theta) * tand(alpha))))
//Calculate the torque required to overcome collar friction Mtc (N-mm)
//Assume uniform-wear theory
Mtc = ((mu2 * W * 1000)*(Do + Di))/4
//Calculate total torque required to drive the lead screw MTotal (N-mm)
MTotal = Mt + Mtc
//Calculate power required to drive the lead screw kW
kW = (2 * %pi * N * MTotal)/(60 * (10^6))
//Calculate efficiency of the screw eta (%)
eta = ((W * 1000 * l)/(2 * %pi * MTotal))*100
//Print results
printf('\nPower required to drive the lead screw(kW) = %f kW\n',kW)
printf('\nEfficiency of the screw(eta) = %f percent\n',eta)
