
//Obtain path of solution file
path = get_absolute_file_path('solution7_13.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_13.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress tauMax (N/mm2)
tauMax = ((50/100)*Syt)/fs
//Calculate vertical component of the axial force in the tie rod Pv (N)
Pv = P * 1000 * sind(theta)
//Calculate horizontal component of the axial force in the tie rod Ph (N)
Ph = P * 1000 * cosd(theta)
//Calculate the direct tensile force on the bolts Dtensile (N)
Dtensile = Pv/N
//Calculate the direct shear force on the bolts Sshear (N)
Sshear = Ph/N
//Calculate the tensile force on appropriate bolt due to bending moment Ftensile (N)
if (l1 > l2) then
    Ftensile = (Ph * e * l1)/(2*((l1^2) + (l2^2)))
else
    Ftensile = (Ph * e * l2)/(2*((l1^2) + (l2^2)))
end
//Assume the core cross-section area of the bolts to be 1mm2 A
A = 1
//Calculate the resultant tensile stress on the bolts res (N/mm2)
res = (Dtensile + Ftensile)/A
//Calculate the shear stress in bolts Stau (N/mm2)
Stau = Sshear/A
//Calculate the maximum shear stress in the bolts tau (N/mm2)
tau = (((res/2)^2) + (Stau^2))^(1/2)
//Calculate the actual core cross-section area of the bolts A (mm2)
A = tau/tauMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
