
//Obtain path of solution file
path = get_absolute_file_path('solution12_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the KE of the mass KEmass (J)
KEmass = 0.5 * m * (v1^2 - v2^2)
//Calculate the initial velocity of the drum w1 (rad/s)
w1 = v1/R
//Calculate the final velocity of the drum w2 (rad/s)
w2 = v2/R
//Calculate the KE of the drum KEdrum (J)
KEdrum = 0.5 * M * k^2 * (w1^2 - w2^2)
//Calculate the PE of the mass PEmass (J)
PEmass = m * 9.81 * h
//Calculate the total energy absorbed by the brakes E (J)
E = KEmass + KEdrum + PEmass
//Calculate the angle through which the drum rotates during the braking period theta (rad)
theta = (h/R)
//Calculate the torque capacity of the brake Mt (N-m)
Mt = E/theta
//Print results
printf("\nEnergy absorbed by the brakes(E) = %f J\n",E)
printf("\nTorque capacity of the brakes(Mt) = %f N-m\n",Mt)
