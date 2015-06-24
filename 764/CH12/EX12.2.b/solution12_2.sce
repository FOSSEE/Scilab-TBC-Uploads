
//Obtain path of solution file
path = get_absolute_file_path('solution12_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the KE of the car KEcar (J)
KEcar = 0.5 * m * ((v1*(5/18))^2 - (v2*(5/18))^2)
//Calculate the initial angular velocity of the wheels w1 (rad/s)
w1 = ((v1*(5/18))/R)
//Calculate the final angular velocity of the wheels w2 (rad/s)
w2 = ((v2*(5/18))/R)
//Calculate the KE of the wheels KEwheel (J)
KEwheel = n * 0.5 * I * (w1^2 - w2^2)
//Calculate the KE of other parts KEother (J)
KEother = 0.5 * Ie * ((r * w1)^2 - w2^2)
//Calculate the energy absorbed by each brake E (J)
E = (KEcar + KEwheel + KEother)/n
//Calculate the time required to bring the car to the rest t (sec)
t = ((v1*(5/18)) - (v2*(5/18)))/dec
//Calculate the average velocity during the braking period wavg (rad/s)
wavg = (w1 + w2)/2
//Calculate the torque capacity of each brake Mt (N-m)
Mt = E/(wavg * t)
//Print results
printf("\nEnergy absorbed by each brake(E) = %f J\n",E)
printf("\nTorque capacity of each brake(Mt) = %f N-m\n",Mt)
printf("\nThere is an error in the printed answer\n")
