
//Obtain path of solution file
path = get_absolute_file_path('solution8_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the total length of the weld l (mm)
l = (P * 1000)/Pall
//Calculate the distance of the C.G. of the angle from the long side y1 (mm)
y1 = l1 - y2
//Calculate the length of the shorter weld l1 (mm)
l1 = l/(1 + (y1/y2))
//Calculate the length of the longer weld l2 (mm)
l2 = l - l1
//Print results
printf('\nLength of the shorter weld(l1) = %f mm\n',l1)
printf('\nLength of the longer weld(l2) = %f mm\n',l2)
