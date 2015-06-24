
//Obtain path of solution file
path = get_absolute_file_path('solution5_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stress sigma (N/mm2)
sigma = Sut/fs
//Assume the shaft diameter to be 1mm d
d = 1
//Calculate the bending moment at fillet section Mb1 (N-mm)
Mb1 = ((P * 1000)/2)*dist
//Calculate the stress at fillet section F (N/mm2)
F = (32 * Mb1)/(%pi * (d^3))
//Calculate the maximum stress at fillet section sigma1 (N/mm2)
sigma1 = Kt1 * F
//Calculate the bending moment at the centre of the span Mb2 (N-mm)
Mb2 = ((P * 1000)/2)*mid
//Calculate the bending stress at the centre of the span sigma2 (N/mm2)
sigma2 = (32 * Mb2)/(%pi * (d^3))
//Choose the largest of the two stresses and store in smax
if (sigma2 > sigma1) then
    smax = sigma2
else
    smax = sigma1
end
//Calculate the true value shaft diameter d (mm)
d = (smax/sigma)^(1/3)
//Print results
printf('\nShaft diameter(d) = %f mm\n',d)
