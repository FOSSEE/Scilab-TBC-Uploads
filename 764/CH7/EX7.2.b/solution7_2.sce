
//Function to standardise the given bolt-size
function[v] = standard(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution7_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the yield shear strength Ssy (N/mm2)
Ssy = (50/100)*Syt
//Calculate the permissible shear stress tau (N/mm2)
tau = Ssy/fs
//Shear load acting on one bolt P (kN)
P = Pt/2
//Calculate the diameter of the bolt shank d (mm)
d = ((4 * P * 1000)/(%pi * tau))^(1/2)
//Standardise the bolt size from Table 7.1
d = standard(d)
//Print results
printf('\nThe standard size of the bolt is M%d\n',d)
