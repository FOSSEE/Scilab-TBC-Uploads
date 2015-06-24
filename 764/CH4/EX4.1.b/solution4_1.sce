
//Obtain path of solution file
path = get_absolute_file_path('solution4_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Yield strength in shear for the plates Ssy (N/mm2)
Ssy = (50/100) * Syt
//Permissible shear stress for rivets Tau (N/mm2)
Tau = Ssy / fs
//Diameter of rivets d (mm)
d = sqrt((P * 1000 * 4)/(n * %pi * Tau))
//Round up d
d = ceil(d)
//Permissible tensile stress for plates Sigma (N/mm2)
Sigma = (Syt/fs)
//Thickness of plates t (mm)
t = (P * 1000)/(Sigma * (L - (n * d)))
//Round up t
t = ceil(t)
//Print results
printf('\nDiameter of the rivet(d) = %f mm\n',d)
printf('\nThickness of plates(t) = %f mm\n',t)
