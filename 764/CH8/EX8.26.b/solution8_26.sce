
//Obtain path of solution file
path = get_absolute_file_path('solution8_26.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_26.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the primary shear force in each rivet Pshear (N)
Pshear = (P * 1000)/n
printf('\nThe code only pertains to the given geometry.\n')
printf('\nErroneous results can be obtained for other geometries.\n')
//Calculate the value of constant C
C = (P * 1000 * e)/(n * (r^2))
//Calculate the secondary shear force Sshear (N)
Sshear = C * r
//Calculate the maximum resultant shear force on rivet 2 P2 (N)
P2 = Pshear + Sshear
//Calculate the diameter of the rivets d (mm)
d = sqrt((4 * P2)/(%pi * tau))
//Print results
printf("\nDiameter of the rivets(d) = %f or %f mm\n",d,ceil(d))
