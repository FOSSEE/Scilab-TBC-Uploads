
//Obtain path of solution file
path = get_absolute_file_path('solution6_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the lead of the screw l (mm)
l = n * p
//Calculate mean diameter of the screw dm (mm)
dm = d - (0.5 * p)
//Calculate the lead angle alpha (degree)
alpha = atand(l/(%pi * dm))
//Calculate the angle of repose fi (degree)
fi = atand(mu1)
//Axial force on the screw while raising the gate W1 (N)
W1 = (w * 1000) + (fr *1000)
//External torque applied to raise the gate Mt (N-mm)
Mt = ((W1 * dm)*(tand(fi + alpha)))/2
//Calculate the torque required to overcome washer friction Mtc (N-mm)
Mtc = (mu2 * W1 * (Do + Di))/4
//Calculate total torque required to raise the gate Mraise (N-mm)
Mraise = Mt + Mtc
//Calculate force exerted by each arm while raising the gate P1 (N)
P1 = Mraise/(2 * rad)
//Net axial force on the screw while lowering the gate W2 (N)
W2 = (w * 1000) - (fr * 1000)
//External torque applied to lower the gate Ml (N-mm)
Ml = (W2 * dm * tand(fi - alpha))/2
//Calculate the torque required to overcome washer friction Mtc (N-mm)
Mlc = (mu2 * W2 * (Do + Di))/4
//Calculate total torque required to lower the gate Mlower (N-mm)
Mlower = Ml + Mlc
//Calculate force exerted by each arm while lowering the gate P2 (N)
P2 = Mlower/(2 * rad)
//Calculate the efficiency of the gate mechanism eta (%)
eta = (W1 * l)/(2 * %pi * Mraise)
//Calculate the core diameter of the screw dc (mm)
dc = d - p
//Calculate the number of threads z
z = (4 * W1)/(%pi * Sb * ((d^2) - (dc^2)))
z = ceil(z)
//Calculate the length of the nut L (mm)
L = z * p
//Print results
printf('\nMaximum force exerted by each arm when the gate is being raised(P1) = %f N\n',P1)
printf('\nMaximum force exerted by each arm when the gate is being lowered(P2) = %f N\n',P2)
printf('\nEfficiency of the gate mechanism(eta) = %f percent\n',eta*100)
printf('\nLength of the nut(L) = %f mm\n',L)
