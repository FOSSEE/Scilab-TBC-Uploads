
//Obtain path of solution file
path = get_absolute_file_path('solution11_13.sce')
//Obtain path of data file
datapath = path + filesep()+'data11_13.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Evaluate the initial angular velocity of each shoe w1 (rad/s)
w1 = ((Ps * 1000)/(m * rg))^(1/2)
//Evaluate the speed at the beginning of engagement n1 (rpm)
n1 = (60 * w1)/(2 * %pi)
//Evaluate the final angular velocity of each shoe w2 (rad/s)
w2 = (2 * %pi * n2)/60
//Evaluate the torque transmitted by the clutch Mt (N-mm)
Mt = (mu * m * rg * rd * z * ((w2^2)-(w1^2)))/1000
//Evaluate the power transmitted by the clutch kW
kW = (2 * %pi * n2 * Mt)/(60 * (10^6))
//Print results
printf('\nResults\n')
printf('\nSpeed at which the engagement begins(n1) = %f rpm\n',n1)
printf('\nTorque transmitted by the clutch(Mt) = %f N-mm\n',Mt)
printf('\nPower transmitted by the clutch(kW) = %f\n',kW)
