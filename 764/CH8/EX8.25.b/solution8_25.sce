
//Obtain path of solution file
path = get_absolute_file_path('solution8_25.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_25.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the primary shear force on each rivet Pshear (N)
Pshear = (P * 1000)/n
printf('\nThe code only pertains to the given geometry.\n')
printf('\nErroneous results can be obtained for other geometries.\n')
//Calculate the eccentricity e (mm)
e = dist/2
//Calculate the radial distance of rivet centres 1 and 2 from the C.G. r1 (mm)
r1 = (dist/2)
//Calculate the value of constant C
C = (P * 1000 * e)/(2 * (r1^2))
//Calculate the secondary shear force in rivets 1 and 2 Sshear (N)
Sshear = C * r1
//Calculate the resultant shear force on rivet 1 P1 (N)
P1 = Pshear + Sshear
//Calculate the rivet diameter d (mm)
d = sqrt((P1 * 4)/(%pi * tau))
dround = ceil(d)
//Print results
printf('\nDiameter of the rivets(d) = %f mm\n', dround)
