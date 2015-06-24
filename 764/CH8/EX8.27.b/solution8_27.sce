
//Obtain path of solution file
path = get_absolute_file_path('solution8_27.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_27.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the primary shear force Pshear (N)
Pshear = (P * 1000)/n
printf('\nThe code only pertains to the given geometry.\n')
printf('\nErroneous results can be obtained for other geometries.\n')
//Calculate the value of constant C
C = (P * 1000 * e)/((n1 * (r1^2)) + (n2 * (r2^2)) + (r3^2))
//Calculate the secondary shear force for rivets with radial distance r1 Sshear1 (N)
Sshear1 = C * r1
//Calculate the secondary shear force for rivets with radial distance r2 Sshear2 (N)
Sshear2 = C * r2
//Calculate the secondary shear force for rivets with radial distance r3 Sshear3 (N)
Sshear3 = C * r3
//Calculate the resultant shear force for rivets with radial distance r1 res1 (N)
res1 = sqrt((Sshear1 * sind(theta))^2 + ((Sshear1 * cosd(theta)) + Pshear)^2)
//Calculate the resultant shear force for rivets with radial distance r2 res2 (N)
res2 = Pshear + Sshear2
//Find out the maximum resultant force rmax (N)
if (res1 > res2) then
    rmax = res1
else
    rmax = res2 
end
//Calculate the diameter of the rivets d (mm)
d = sqrt((rmax * 4)/(%pi * tau))
//Print results
printf('\nDiameter of the rivets(d) = %f or %f mm\n', d,ceil(d))
