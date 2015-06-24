
//Obtain path of solution file
path = get_absolute_file_path('solution6_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate lead of the screw l (mm)
l = n * p
//Calculate mean diameter of the screw dm (mm)
dm = d - (0.5 * p)
//Calculate lead angle alpha (degree)
alpha = atand(l/(%pi * dm))
//Calculate angle of repose fi (degree)
fi = atand(mu)
//Torque required to rise the load Mt (N-mm)
Mt = ((W * 1000 * dm)*(tand(fi + alpha)))/2
//Torque required to overcome collar friction Mtc (N-mm)
//Assume uniform wear theory
Mtc = ((mu * W * 1000)*(Do + Di))/4
//Total torque required to raise the load Mtt (N-mm)
Mtt = Mt + Mtc
//Torque required to lower the load Ml (N-mm)
Ml = ((W * 1000 * dm)*(tand(fi - alpha)))/2
//Total torque required to lower the load Mlt (N-mm)
Mlt = Ml + Mtc
//Force required to raise the load Pi (N)
Pi = Mtt/rad
//Print results
printf('\nTorque required to raise the load(Mtt) = %f mm\n',Mtt)
printf('\nTorque required to lower the load(Mlt) = %f mm\n',Mlt)
printf('\nForce at %dmm radius required to raise the load(Pi) = %f N\n',rad,Pi)
