
//Obtain path of solution file
path = get_absolute_file_path('solution10_25.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_25.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculatet the maximum bending stress sigmab (N/mm2)
sigmab = Syt/fs
//Calculate the thickness of the spring t (mm)
t = ((6 * P * 1000 * L * 1000)/(sigmab * (nf + ng) * b))^(1/2)
tround = ceil(t)
//Calculate the spring deflection delta (mm)
delta = (12 * P * 1000 * (L*1000)^3)/(E * b * tround^3 * (3*nf + 2*ng))
//Print results
printf("\nCross-section of leaves = %f x %f mm\n",b,tround)
printf("\nDeflection of the spring end(delta) = %f mm\n",delta)
