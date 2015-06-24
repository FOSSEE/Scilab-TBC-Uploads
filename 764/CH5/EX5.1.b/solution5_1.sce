
//Obtain path of solution file
path = get_absolute_file_path('solution5_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress sigma (N/mm2)
sigma = Sut/fs
//Assume the thickness of the plate to be 1mm t
t = 1
//Tensile stress at fillet section F (N/mm2)
F = (P * 1000)/(w * t)
//Calculate the maximum tensile stress sigma1 at fillet section
sigma1 = Kt1 * F
//Tensile stress at hole section H (N/mm2)
H = (P * 1000)/((w - d)*t)
//Calculate the maximum tensile stress sigma2 at hole section
sigma2 = Kt2 * H
//Choose the largest of the two stresses and store in smax
if (sigma2 > sigma1) then
    smax = sigma2
else
    smax = sigma1
end
//Calculate the true value of thickness of the plate t (mm)
t = smax/sigma
//Print results
printf('\nThickness of the plate(t) = %f mm\n',t)
