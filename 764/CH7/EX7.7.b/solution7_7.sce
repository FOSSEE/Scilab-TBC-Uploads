
//Obtain path of solution file
path = get_absolute_file_path('solution7_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the tensile force induced in appropriate bolt P1 (N)
if ((l1 > l2) & (l1 > l3)) then
    P1 = (P * 1000 * l * l1)/(2*((l1^2) + (l2^2) + (l3^2)))
elseif ((l2 > l1) & (l2 > l3))
    P1 = (P * 1000 * l * l2)/(2*((l1^2) + (l2^2) + (l3^2)))
else
    P1 = (P * 1000 * l * l3)/(2*((l1^2) + (l2^2) + (l3^2)))
end
//Calculate the core cross-section area of the bolt A (mm2)
A = P1/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
