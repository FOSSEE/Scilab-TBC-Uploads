
//Obtain path of solution file
path = get_absolute_file_path('solution12_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//For RIGHT SHOE
//Calculate the moment of the frictional force about the pivot Mf (N-mm)
Mf = mu * pmax * R * w * (4 * R * (cosd(theta1) - cosd(theta2)) - h * (cosd(2 * theta1) - cosd(2 * theta2)))/(4 * sind(fi))
//Calculate the moment of the normal force about the pivot Mn (N-mm)
Mn = pmax * R * w * h * (2 * (theta2 - theta1) * (%pi/180) - (sind(2 * theta2) - sind(2 * theta1)))/(4 * sind(fi))
//Calculate the actuating force P (N)
P = (Mn - Mf)/d1
//Calculate the torque absorbing capacity Mtr
Mtr = mu * R^2 * pmax * w * (cosd(theta1) - cosd(theta2))/sind(fi)
//For LEFT SHOE
//Assume the maximum intensity of pressure for LEFT SHOE to be 1 N/mm2 plmax
plmax = 1
//Calculate the moment of the frictional force about the pivot Mfl (N-mm)
Mlf = Mf * plmax/pmax
//Calculate the moment of the normal force about the pivot Mnl (N-mm)
Mln = Mn * plmax/pmax
//Calculate the actual maximum intensity of pressure plmax (N/mm2)
plmax = P * d1/(Mlf + Mln)
//Calculate the torque absorbing capacity Mtl (N-mm)
Mtl = Mtr * (plmax/pmax)
//Calculate the total torque absorbing capacity of the brake Mt (N-mm)
Mt = Mtr + Mtl
//Print results
printf("\nActuating force(P) = %f N\n",P)
printf("\nTorque absorbing capacity of the brake with 4 shoes(Mt) = %f N-mm\n",2*Mt)
