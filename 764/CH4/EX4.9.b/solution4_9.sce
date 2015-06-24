
//Obtain path of solution file
path = get_absolute_file_path('solution4_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stress for the plates sigmat (N/mm2)
sigmat = Syt/fs
//Force acting on each plate P (kN)
P = P/2
//Calculate the bending moment at the frame Mb (N-mm)
Mb = (P * 1000) * (d + (w/2))
//Assume the plate thickness to be 1mm t
t = 1
//Calculate the direct tensile stress D (N/mm2)
D = (P * 1000)/(w * t)
//Calculate the value of y (mm)
y = (w/2)
//Calculate the second moment of area I (mm4)
I = (t * (w^3))/12
//Calculate the bending stress B (N/mm2)
B = (Mb * y)/I
//Calculate the plate thickness t (mm)
t = (D + B)/sigmat
//Print results
printf('\nThe thickness of the plate(t) = %f mm\n',t)
 