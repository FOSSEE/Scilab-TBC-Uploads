
//Obtain path of solution file
path = get_absolute_file_path('solution7_9.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_9.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the direct tensile stress in bolts Dtensile (N)
Dtensile = (P * 1000)/N
//Calculate the tensile force on appropriate bolt due to tilting tendency of the bracket Ftensile (N)
if (l1 > l2) then
    Ftensile = (P * 1000 * l * l1)/(2*((l1^2) + (l2^2)))
else
    Ftensile = (P * 1000 * l * l2)/(2*((l1^2) + (l2^2)))
end
//Calculate the resultant tensile force res (N)
res = Dtensile + Ftensile
//Calculate the core cross-section area of bolts A (mm2)
A = res/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
