
//Obtain path of solution file
path = get_absolute_file_path('solution6_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//For upper screw
//Calculate the lead lUp (mm)
lUp = n * pUp 
//Calculate the mean diameter dmUp (mm)
dmUp = dUp - (0.5 * pUp)
//Calculate the lead angle alphaUp (degree)
alphaUp = atand(lUp/(%pi * dmUp))
//Calculate the angle of repose fi (degree)
fi = atand(mu)
//Assume the load to be raised 1N W
W = 1
//Calculate the torque required Mt1 (N-mm)
Mt1 = (W * dmUp * tand(alphaUp + fi))/2
//For lower screw
//Calculate the lead lLow (mm)
lLow = n * pLow
//Calculate the mean diameter dmLow (mm)
dmLow = dLow - (0.5 * pLow)
//Calculate the lead angle alphaLow (degree)
alphaLow = atand(lLow/(%pi * dmLow))
//Calculate the torque required Mt2 (N-mm)
Mt2 = (W * dmLow * tand(fi - alphaLow))/2
//Total external torque required MTotal (N-mm)
MTotal = P * R
//Calculate the actual load that can be raised W (N)
W = MTotal/(Mt1 + Mt2)
//Calculate the efficiency of the screw jack eta (%)
eta = ((4 * W)/(2 * %pi * MTotal))*100
//Print results
printf('\nLoad that can be raised(W) = %f N\n',W)
printf('\nEfficiency of the screw jack(eta) = %f percent\n',eta)
