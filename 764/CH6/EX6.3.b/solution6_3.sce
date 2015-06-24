
//Obtain path of solution file
path = get_absolute_file_path('solution6_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_3.sci'
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
//Assume the clamping force to be 1N W
W = 1
//Calculate angle of repose for the thread fi1 (degree)
fi1 = atand(mu1)
//Calculate torque required Mt (N-mm)
Mt = (W * dm * tand(fi1 + alpha))/2
//Calculate torque required to overcome collar friction Mtc (N-mm)
//Apply uniform-wear theory
Mtc = ((mu2 * W)*(Do + Di))/4
//Total external torque applied to the handle MTotal (N-mm)
MTotal = P * dist
//Calculate the actual clampng force W (N)
W = MTotal/(Mt + Mtc)
//Calculate overall efficiency of the clamp eta (%)
eta = ((W * l)/(2 * %pi * MTotal))*100
//Print results
printf('\nClamping force developed between the jaws(P) = %f N\n',W)
printf('\nOverall efficiency of clamp(eta) = %f percent\n',eta)
