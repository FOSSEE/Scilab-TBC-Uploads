
//Obtain path of solution file
path = get_absolute_file_path('solution7_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the direct shear force on each bolt Dshear (N)
Dshear = (P * 1000)/N
//Assume the core cross-section area to be 1mm2 A
A = 1
//Calculate the direct shear stress in each bolt tau (N/mm2)
tau = Dshear/A
//Calculate the tensile force on appropriate bolt Ftensile (N)
if (l1 > l2) then
    Ftensile = (P * 1000 * e *l1)/(2*((l1^2) + (l2^2)))
else
    Ftensile = (P * 1000 * e *l2)/(2*((l1^2) + (l2^2)))
end
//Calculate the tensile stress in bolt1 sigmat (N/mm2)
sigmat = Ftensile/A
//Calculate the principal stress in bolt1 S (N/mm2)
S = (sigmat/2) + (((sigmat/2)^2) + (tau^2))^(1/2)
//Calculate the actual core cross-section area of the bolt A (mm2)
A = S/sigmaMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
