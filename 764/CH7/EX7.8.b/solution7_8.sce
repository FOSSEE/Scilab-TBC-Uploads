
//Obtain path of solution file
path = get_absolute_file_path('solution7_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the direct tensile force Dtensile (N)
Dtensile = (P * 1000)/N
//Calculate the tensile force due to bracket tilting tendency Ftensile (N)
if (l1 > l2) then
    Ftensile = (P * 1000 * e * l1)/((l1^2) + (l2^2))
else
    Ftensile = (P * 1000 * e * l2)/((l1^2) + (l2^2))
end
//Calculate the resultant tensile force on appropriate bolt res (N)
res = Dtensile + Ftensile
//Calculate the core cross-section area of bolt A (mm2)
A = res/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
