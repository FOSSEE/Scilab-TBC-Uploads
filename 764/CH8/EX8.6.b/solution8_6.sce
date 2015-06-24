
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_6.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the required length of the weld L (mm)
L = (P * 1000)/S
//Calculate the length of the parallel weld l (mm)
l = (L - t)/2
//Total required length of the welds lTotal (mm)
lTotal = l + lExt
lround = round_five(lTotal)
//Print results
printf('\nTotal required length of the welds(lTotal) = %f or %f mm\n',lTotal,lround)
