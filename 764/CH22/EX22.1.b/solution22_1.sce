
//Obtain path of solution file
path = get_absolute_file_path('solution22_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate diameter of the cylinder Di (mm)
Di = 1000 * ((4 * V )/(%pi * ratio))^(1/3)
//Calculate length of the cylinder L (mm)
L = ratio * Di
//Allowable tensile stress in the cylinder sigmat (N/mm2)
sigmat = Sut/fs
//Calculate the thickness of the cylinder t (mm)
t = Pi * Di/(2 * sigmat)
//Print results
printf("\nDiameter of the cylinder(Di) = %f mm\n",Di)
printf("\nLength of the cylinder(L) = %f mm\n",L)
printf("\nThickness of the cylinder(t) = %f mm\n",t)
