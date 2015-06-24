
//Obtain path of solution file
path = get_absolute_file_path('solution12_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_12.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the torque capacity of each pad mt (N-m)
mt = Mt/n
//Calculate the friction radius Rf (mm)
Rf = (2 * (Ro^3 - Ri^3))/(3 * (Ro^2 - Ri^2))
//Calculate the actuating force P (N)
P = (mt * 1000)/(mu * Rf)
//Calculate the area of the pad A (mm2)
A = P/pavg
//Calculate the angular dimension of the pad theta (deg)
theta = ((2 * A)/(Ro^2 - Ri^2))*180/%pi
//Print results
printf("\nAngular dimension of the pad(theta) = %f deg\n",theta)
