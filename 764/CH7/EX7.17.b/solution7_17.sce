
//Obtain path of solution file
path = get_absolute_file_path('solution7_17.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_17.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the resultant load on bolt Pb (N)
deltaP = (P * 1000)*(kb/(kb + kc))
Pb = (Pi * 1000) + deltaP
//Calculate the tensile stress area of the bolt A (mm2)
A = Pb/sigmat
//Choose proper diameter from Table 7.1
//Print results
printf('\nTensile stress area of the bolt(A) = %f mm2\n',A)
