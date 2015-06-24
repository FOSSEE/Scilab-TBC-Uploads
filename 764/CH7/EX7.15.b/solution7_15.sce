
//Obtain path of solution file
path = get_absolute_file_path('solution7_15.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_15.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the primary shear force on bolts Pshear (N)
Pshear = (P * 1000)/N
//Distance between bolt and centre of gravity r (mm)
r = (((dist/2)^2) + ((dist/2)^2))^(1/2)
//Calculate the secondary shear force on bolts Sshear (N)
Sshear = (P * 1000 * e * r)/(4 * (r^2))
//Calculate the resultant shear force on bolts Ps (N)
Ps = (((Pshear + (Sshear * sind(theta)))^2) + ((Sshear * cosd(90 - theta))^2))^(1/2)
//Calculate the resisting force set up in appropriate bolts due to bracket tilting Pt (N)
if (l1 > l2) then
    Pt = (P * 1000 * et * l1)/(2*((l1^2) + (l2^2)))
else
    Pt = (P * 1000 * et * l2)/(2*((l1^2) + (l2^2)))
end
//Assume the core cross-section area of the bolts to be 1mm2 A
A = 1
//Calculate the tensile stress sigmat (N/mm2)
sigmat = Pt/A
//Calculate the shear stress Stau (N/mm2)
Stau = Ps/A
//Calculate the maximum shear stress in the bolts tau (N/mm2)
tau = (((sigmat/2)^2) + (Stau^2))^(1/2)
//Calculate the actual core cross-section area of the bolts A (mm2)
A = tau/tauMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
