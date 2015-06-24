
//Obtain path of solution file
path = get_absolute_file_path('solution8_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the distance of the C.G. of weld1 from the C.G. of the plate y1 (mm)
y1 = l1 - y2
//Calculate the total length of the weld L (mm)
L = (P * 1000)/(0.707 * h * tau)
//Calculate the length of the weld at the top L1 (mm)
L1 = L/(1 + (y1/y2))
//Calculate the length of the weld at the bottom L2 (mm)
L2 = L - L1
//Print results
printf('\nLength of the weld at the top(L1) = %f mm\n',L1)
printf('\nLength of the weld at the bottom(L2) = %f mm\n',L2)
