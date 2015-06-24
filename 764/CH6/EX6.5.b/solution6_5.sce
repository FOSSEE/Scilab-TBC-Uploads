
//Obtain path of solution file
path = get_absolute_file_path('solution6_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the lead of the screw l (mm)
l = n * p
//Calculate the mean diameter of the screw dm (mm)
dm = d - (0.5 * p)
//Calculate the lead angle alpha (degree)
alpha = atand(l/(%pi * dm))
//Calculate the angle of repose fi (degree)
fi = atand(mu)
//Calculate the torque required Mt (N-mm)
Mt = ((W * 1000 * dm)*(tand(fi + alpha)))/2
//Calculate the torque required to overcome the collar friction Mtc (N-mm)
Mtc = ((mu * W * 1000)*(4 * rm))/4
//Calculate the total external torque to be applied MTotal (N-mm)
MTotal = Mt + Mtc
//Hand force exerted at the hand wheel P (N)
P = MTotal/(D/2)
//Calculate the efficiency of the straightner eta (%)
eta = ((W * 1000 * l)/(2 * %pi * MTotal))*100
//Calculate the number of threads z
z = L/p
//Calculate the core diameter of the screw dc (mm)
dc = d - p
//Calculate the bearing pressure on threads in nut Sb (N/mm2)
Sb = (4 * W * 1000)/(%pi * z * ((d^2) - (dc^2)))
//Print results
printf('\nForce exerted at the rim to drive the screw(P) = %f N\n',P)
printf('\nEfficiency of the straightner(eta) = %f percent\n',eta)
printf('\nBearing pressure on the threads in the nut(Sb) = %f N/mm2\n',Sb)
