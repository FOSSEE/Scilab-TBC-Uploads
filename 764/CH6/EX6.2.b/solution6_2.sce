
//Obtain path of solution file
path = get_absolute_file_path('solution6_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate lead of the screw l (mm)
l = 2 * p
//Calculate mean diameter dm (mm)
dm = d - (0.5 * p)
//Calculate lead angle alpha (degree)
alpha = atand(l/(%pi * dm))
//Calculate the torque required to raise the load Mt (N-m)
Mt = ((W * 1000 * dm)*((mu * secd(theta)) + (tand(alpha))))/(2 * (1 - (mu * secd(theta) * tand(alpha))))
//Torque required to lower the load Ml (N-m)
Ml = ((W * 1000 * dm)*((mu * secd(theta)) - (tand(alpha))))/(2 * (1 + (mu * secd(theta) * tand(alpha))))
//Calculate the efficiency of screw eta (%)
eta = ((tand(alpha)*(1 - (mu * secd(theta) * tand(alpha))))/((mu * secd(theta)) + tand(alpha)))*100
//Print results
printf('\nTorque required to raise the load(Mt) = %f N-m\n',Mt/1000)
printf('\nTorque required to lower the load(Ml) = %f N-m\n',Ml/1000)
printf('\nEfficiency of screw(eta) = %f percent\n',eta)
