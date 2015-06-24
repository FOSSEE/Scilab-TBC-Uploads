
//Function to standardise the given bolt-size
function[v] = standard(w)
    v = ceil(w)
    rem = pmodulo(v,10)
    if (rem ~= 0) then
    v = v + (10 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution7_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data7_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Calculate the core diameter of the eye-bolt dc (mm)
dc = ((4 * P * 1000)/(%pi * sigmat))^(1/2)
//use equation 7.4
//Calculate the nominal diameter d (mm)
d = dc/0.8
//Standardise the bolt size from Table 7.1
d = standard(d)
//Print results
printf('\nStandard size of the bolt is M%d\n',d)
