
//Obtain path of solution file
path = get_absolute_file_path('solution10_24.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_24.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the thickness of the spring t (mm)
t = ((6 * P * 1000 * L * 1000)/(sigmab * (nf + ng) * r))^(1/3)
tround = ceil(t)
//Calculate the width of the leaves b (mm)
b = r * tround
//Calculate the initial nip C (mm)
C = (2 * P * 1000 * (L*1000)^3)/(E * (nf + ng) * b * tround^3)
//Calculate the initial pre-load Pi (N)
Pi = (2 * ng * nf * P * 1000)/((nf + ng) * (3*nf + 2*ng))
//Print results
printf("\nThickness of the leaves(t) = %f or %f mm\n",t,tround)
printf("\nWidth of the leaves(b) = %f mm\n",b)
printf("\nInitial nip(C) = %f mm\n",C)
printf("\nInitial pre-load(Pi) = %f N\n",Pi)
