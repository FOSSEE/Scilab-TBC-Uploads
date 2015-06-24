
//Obtain path of solution file
path = get_absolute_file_path('solution8_24.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_24.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the primary shear force on each bolt Pshear (N)
Pshear = (P * 1000)/n
printf('\nThe code only pertains to the given geometry.\n')
printf('\nErroneous results can be obtained for other geometries.\n')
//Calculate the radial distance of rivet centres 1 and 4 from the C.G. r1 (mm)
r1 = dist + (dist/2)
//Calculate the radial distance of rivet centre 2 and 3 from the C.G. r2 (mm)
r2 = (dist/2)
//Calculate the value of constant C
C = (P * 1000 * e)/(2 * ((r1^2) + (r2^2)))
//Calculate the secondary shear force in rivets 1 and 4 Sshear1 (N)
Sshear1 = C * r1
//Calculate the secondary shear force in rivets 2 and 3 Sshear2 (N)
Sshear2 = C * r2
//Calculate the maximum of the two secondary shear forces Sshear (N)
if (Sshear1 > Sshear2) then
    Sshear = Sshear1
else
    Sshear = Sshear2
end
//Calculate the resultant force P1 (N)
P1 = sqrt((Pshear^2) + (Sshear^2))
//Calculate the diameter of the rivets d (mm)
d = sqrt((P1 * 4)/(%pi * tau))
dround = ceil(d)
//Print results
printf('\nDiameter of the rivets(d) = %f mm\n', dround)
