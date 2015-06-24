
//Obtain path of solution file
path = get_absolute_file_path('solution4_20.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_20.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stresses for steel parts sigmat (N/mm2)
sigmat = Syt/fs
//Assume the diameter of the link to be 1mm D
D = 1
R = 4 * D
Ri = (4 * D)-(0.5 * D)
Ro = (4 * D)+(0.5 * D) 
Rn = ((sqrt(Ro) + sqrt(Ri))^2)/4
//Calculate the eccentricity e (mm)
e = R - Rn
hi = Rn - Ri
A = (%pi/4)*(D^2)
//Calculate the bending moment Mb (N-mm)
Mb = (P * 1000)*(4 * D)
//Calculate the bending stress B (N/mm2)
B = (Mb * hi)/(A * e * Ri)
//Calculate the direct tensile stress T (N/mm2)
T = (P * 1000)/A
//Calculate the true diameter of the link D (mm)
D = ((B + T)/sigmat)^(1/2)
//Print results
printf('\nThe diameter of the link(D) = %f mm\n',D)
