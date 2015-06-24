
//Obtain path of solution file
path = get_absolute_file_path('solution4_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible stresses for cotter (N/mm2)
//Tensile stress sigma
sigma = Syt/fs
//Yield strength in shear for cotter Ssy (N/mm2)
Ssy = (50/100)*Syt
//Shear stress tau
tau = Ssy/fs
//Shear failure criterion
//Calculate thickness of cotter t (mm)
t = sqrt((P * 1000)/(2 * 5 * tau))
//Calculate width of cotter b (mm)
b = 5 * t
//Bending failure criterion
//Calculate thickness of cotter t1 (mm)
t1 = ((((P * 1000)/2)*((d2/4) + ((d4 - d2)/6))*(5/2))/((100 * (5^3))/12))^(1/3)
//Round up t1
t1 = ceil(t1)
//Calculate width of cotter b1 (mm)
b1 = 5 * t1
//Print results
printf('\nShear failure criterion\n')
printf('\nThickness of cotter(t) = %f mm\n',t)
printf('\nWidth of cotter(b) = %f mm\n',b)
printf('\nBending failure criterion\n')
printf('\nThickness of cotter(t1) = %f mm\n',t1)
printf('\nWidth of cotter(b1) = %f mm\n',b1)