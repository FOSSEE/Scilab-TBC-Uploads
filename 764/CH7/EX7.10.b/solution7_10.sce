
//Obtain path of solution file
path = get_absolute_file_path('solution7_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_10.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the resisting force in appropriate bolt P2 (N)
if (l1 > l2) then
    P2 = ((Ttight + Tslack)*1000 * l * l1)/(2*(l1^2 + l2^2))
else
    P2 = ((Ttight + Tslack)*1000 * l * l2)/(2*(l1^2 + l2^2))
end
//Calculate the core cross-section area of the bolt A (mm2)
A = P2/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
