
//Obtain path of solution file
path = get_absolute_file_path('solution22_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data22_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the diameter of the cylindrical portion Di (mm)
Di = 1000 * ((V * 24)/(%pi * (6 * ratio + 4)))^(1/3)
//Calculate the length of the cylinder L (mm)
L = ratio * Di
//Calculate the allowable stress in the cylinder sigmat (N/mm2)
sigmat = Sut/fs
//Calculate the thickness of the cylindrical portion tc (mm)
tc = Pi * Di/(2 * sigmat)
//Calculate the thickness of the hemispherical ends th (mm)
th = Pi * Di/(4 * sigmat)
//Print results
printf("\nDiameter of the cylinder(Di) = %f mm\n",Di)
printf("\nLength of the cylinder(L) = %f mm\n",L)
printf("\nThickness of the cylindrical portion(tc) = %f mm\n",tc)
printf("\nThickness of the hemispherical portion(th) = %f mm\n",th)
