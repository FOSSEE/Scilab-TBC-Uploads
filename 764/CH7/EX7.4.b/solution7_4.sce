
//Function to standardise the given bolt-size
function[v] = standard(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution7_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress tau (N/mm2)
tau = ((50/100)*Syt)/fs
//Calculate the primary shear force on bolt3 Pshear (N)
Pshear = (P * 1000)/N
//Calculate the secondary shear force on bolt3 Sshear (N)
Sshear = (P * 1000 * e * r1)/((r1^2) + (r3^2))
//Calculate the resultant force on bolt3 P3 (N)
P3 = Pshear + Sshear
//Calculate the core diameter of the bolt dc (mm)
dc = ((4 * P3)/(%pi * tau))^(1/2)
//Calculate the nominal diameter of the bolt d (mm)
d = dc/0.8
//Standardise the bolt size
d = standard(d)
//Print results
printf('\nThe standard size of the bolts is M%d\n',d)
