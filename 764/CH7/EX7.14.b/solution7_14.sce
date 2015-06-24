
//Obtain path of solution file
path = get_absolute_file_path('solution7_14.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_14.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress tauMax (N/mm2)
tauMax = ((50/100)*Syt)/fs
//Horizontal component of force P Ph (N)
Ph = P * 1000 * sind(theta)
//Vertical component of force P Pv (N)
Pv = P * 1000 * cosd(theta)
//Calculate the direct tensile force on each bolt Dtensile (N)
Dtensile = Ph/N
//Calculate the turning moment due to horizontal component Mh (N-mm)
Mh = Ph * (f - cg)
//Calculate the direct shear force on each bolt Sshear (N)
Sshear = Pv/N
//Calculate the turning moment due to vertical component Mv (N-mm)
Mv = Pv * t
//Calculate the tensile force on appropriate bolt due to bending moment Ftensile (N)
if (l1 > l2) then
    Ftensile = ((Mh + Mv)*l1)/(2*((l1^2) + (l2^2)))
else
    Ftensile = ((Mh + Mv)*l2)/(2*((l1^2) + (l2^2)))
end
//Calculate the total tensile force on each bolt Pt (N)
Pt = Dtensile + Ftensile
//Assume the core cross-section area of the bolts to be 1mm2 A
A = 1
//Calculate the resultant tensile stress in the bolt res (N/mm2)
res = Pt/A
//Calculate the shear stress in bolts Stau (N/mm2)
Stau = Sshear/A
//Calculate the maximum shear stress in the bolts tau (N/mm2)
tau = (((res/2)^2) + (Stau^2))^(1/2)
//Calculate the actual core cross-section area of the bolts A (mm2)
A = tau/tauMax
//Choose proper diameter from Table 7.1
//Print results
printf('\nArea at the core cross-section(A) = %f mm2\n',A)
