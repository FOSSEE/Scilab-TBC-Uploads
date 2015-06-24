
//Obtain path of solution file
path = get_absolute_file_path('solution6_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data6_9.sci'
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
Mt = (W * dm * tand(fi + alpha))/2
//Calculate the torque required to overcome the collar friction Mtc (N-mm)
Mtc = (mu * W * rm)
//Calculate the total external torque required MTotal (N-mm)
MTotal = Mt + Mtc
//Calculate the length of the handle a (mm)
a = MTotal/P
//Calculate the maximum bending moment near the screw Mb (N-mm)
Mb = P * a
//Calculate the diameter of the handle dh (mm)
dh = ((32 * Mb)/(Syt * %pi))^(1/3)
//Print results
printf('\nTorque required to tighten the clamp(MTotal) = %f N-mm\n',MTotal)
printf('\nLength of the handle(a) = %f mm\n',a)
printf('\nDiameter of the handle(dh) = %f mm\n',dh)
