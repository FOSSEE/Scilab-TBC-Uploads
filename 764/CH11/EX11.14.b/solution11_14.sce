
//Obtain path of solution file
path = get_absolute_file_path('solution11_14.sce')
//Obtain path of data file
datapath = path + filesep()+'data11_14.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Evaluate mass moment of inertia of input shaft I1 (kg-m2)
I1 = (m1 * ((k1/1000)^2))
//Evaluate mass moment of inertia of output shaft I2 (kg-m2)
I2 = (m2 * ((k2/1000)^2))
//Evaluate the angular velocity of the clutch w1 (rad/s)
w1 = (2 * %pi * n1)/60
//Evaluate the torque transmission of the clutch Mt (N-m)
Mt = ((60 * (10^6) * kW)/(2 * %pi * n1))/1000
//Initial angular velocity of the output shaft w2 (rad/s)
w2 = 0
//Evaluate the time required to bring the output shaft
//to the rated speed from rest t1 (sec)
t1 = ((w1 - w2) * I1 * I2)/((I1 + I2) * Mt)
//Evaluate the heat generated during clutch operation E (J)
E = (((w1 - w2)^2) * I1 * I2)/(2 * (I1 + I2)) 
//Print results
printf('\nResults\n')
printf('\nTime required to bring the output shaft to rated speed')
printf(' from rest(t1) = %f sec\n',t1)
printf('\nHeat generated during the clutch operation(E) = %f J\n',E)
