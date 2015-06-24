
//Obtain path of solution file
path = get_absolute_file_path('solution10_22.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_22.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the strip width b (mm)
b = (12 * M)/(sigmab * t^2)
bround = ceil(b)
//Calculate the angle of rotation theta (rad)
theta = n * 2 * %pi
//Calculate the length of the strip l (mm)
l = (theta * E * bround * t^3)/(12 * M)
//Print results
printf("\nWidth of the strip(b) = %f or %f mm\n",b,bround)
printf("\nLength of the strip(l) %f mm or %f m\n",l,l/1000)
