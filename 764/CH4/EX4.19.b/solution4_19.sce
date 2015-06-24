
//Obtain path of solution file
path = get_absolute_file_path('solution4_19.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_19.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stresses for steel parts sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the eccentricity e (mm)
Rn = (((bi + bo)/2)*h)/((((bi * Ro) - (bo * Ri))/h)*log(Ro/Ri)-(bi - bo))
R = Ri + ((h*(bi + (2 * bo)))/(3 * (bi + bo)))
e = R - Rn
hi = Rn - Ri
A = (h * (bi + bo))/2
//Assume the value load P to be 1N 
P = 1
//Calculate the bending moment Mb (N-mm)
Mb = R * P
//Calculate bending stress at the inner fibre B (N/mm2)
B = (Mb * hi)/(A * e * Ri)
//Calculate the direct tensile stress T (N/mm2)
T = P/A
//Calculate the actual load carrying capacity P (N)
P = sigmat/(B + T)
//Print results
printf('\nThe load carrying capacity(P) = %f N\n',P)
