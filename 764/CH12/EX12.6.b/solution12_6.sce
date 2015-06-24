
//Obtain path of solution file
path = get_absolute_file_path('solution12_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the actuating force P (N)
P = (m * 9.81 * Rc)/(g * mu * Rb)
//Calculate the area of friction lining A (mm2)
A = P/pmax
//Calculate the peripheral velocity of the brake drum v2 (m/s)
v2 = pv/pmax
//Calculate the angular velocity of the brake drum w2 (rad/s)
w2 = v2/Rb
//Calculate the angular velocity of the cable drum w1 (rad/s)
w1 = w2/g
//Calculate the peripheral velocity of the cable drum v1 (m/s)
v1 = w1 * Rc
//Print results
printf("\nBrake shoe force(P) = %f N\n",P)
printf("\nArea of friction lining(A) = %f mm2\n",A)
printf("\nUniform velocity at which the mass can be lowered(v1) = %f m/s or %f m/min\n",v1,v1*60)
