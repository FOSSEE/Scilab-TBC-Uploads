
//Obtain path of solution file
path = get_absolute_file_path('solution4_22.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_22.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Temperature change Dt (degree)
Dt = Tf - Ti
//Calculate the expansion of tube delta (mm)
delta = alpha * l * Dt
//Net compression of tube c (mm)
c = delta - j
//Calculation of force P (N)
P = (A * E * c)/l
//Calculate the resultant stress sigma (N/mm2)
sigma = P/A
//Print results
printf('\nForce acting on the tube(P) = %f N\n',P)
printf('\nResultant stress(sigma) = %f N/mm2\n',sigma)
