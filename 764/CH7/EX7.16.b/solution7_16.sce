
//Obtain path of solution file
path = get_absolute_file_path('solution7_16.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_16.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Assume the inner diameter of the circular plate to be 1mm di
di = 1
//Calculate the outer diameter of the circular plate do (mm)
do = 2 * di
//Calculate the stiffness of the bolts kb (N/mm)
kb = (%pi/4*(di^2))*(E1/l)
//Calculate the area of the two plates Ac (mm2)
Ac = (%pi/4)*((do^2) - (di^2))
//Calculate the combined stiffness of the two plates kc (N/mm)
kc = (Ac * E2)/l
//Calculate the resultant load on the bolt Pb (N)
deltaP = (P * 1000)*(kb/(kb + kc))
Pb = (Pi * 1000) + deltaP
//Calculate the core cross-section area of the bolt A (mm2)
A = Pb/sigmat
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
