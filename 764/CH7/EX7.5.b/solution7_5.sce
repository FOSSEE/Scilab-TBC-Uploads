
//Obtain path of solution file
path = get_absolute_file_path('solution7_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress tau (N/mm2)
tau = ((50/100)*Syt)/fs
//Calculate the direct shear force in bolt Dshear (N)
Dshear = (P * 1000)/N
//Assume the area at core cross-section to be 1mm2 A
A = 1
//Calculate the direct shear stress in bolt Sshear (N/mm2)
Sshear = Dshear/A
//Calculate the tensile force on the bolts Ftensile (N)
if (l1 > l2) then
    Ftensile = (P * 1000 * e * l1)/(2*((l1^2) + (l2^2)))
else
    Ftensile = (P * 1000 * e * l2)/(2*((l1^2) + (l2^2)))
end
//Calculate tensile stress in appropriate bolt sigmat (N/mm2)
sigmat = Ftensile/A
//Calculate the principal shear stress in bolt tauMax (N/mm2)
tauMax = (((sigmat/2)^2) + (Sshear^2))^(1/2)
//Calculate the actual area of core of cross-section A (mm2)
A = tauMax/tau
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)

