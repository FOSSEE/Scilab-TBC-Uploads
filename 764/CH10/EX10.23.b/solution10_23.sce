
//Obtain path of solution file
path = get_absolute_file_path('solution10_23.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_23.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the bending moment on the spring M (N-mm)
M = P * r
//Calculate the spring thickness t (mm)
t = sqrt((12 * M)/(sigmab * b))
tround = ceil(t)
//Calculate the degrees of rotation theta (deg)
theta = (180/%pi) * ((12 * M * l)/(E * b * tround^3))
//Print results
printf("\nThickness of the strip(t) = %f or %f mm\n",t,tround)
printf("\nDegrees of rotation(theta) = %f\n",theta)
