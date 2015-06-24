
//Obtain path of solution file
path = get_absolute_file_path('solution7_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the tensile force in the cap screw P1 (N)
P1 = (2 * P * 1000 * l * (a + (b * cosd(180/n))))/(n * ((2 * (a^2)) + (b^2)))
//Calculate the core diameter of the cap screw dc (mm)
dc = ((P1 * 4)/(%pi * sigmaMax))^(1/2)
//Calculate the nominal diameter of the cap screw d (mm)
d = dc/0.8
d = ceil(d)
//Print results
printf('\nThe nominal diameter of the cap screw(d) = %f mm\n',d)
