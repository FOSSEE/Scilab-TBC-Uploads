
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the tensile force on the plates P (N)
P = w * t * sigmat
//Calculate the thickness of the weld h (mm)
h = t
//Calculate the length of the weld l (mm)
l = P/(1.414 * h * sigmat)
//Total required length of the welds lTotal (mm)
lTotal = l + lExt
lround = round_five(lTotal)
//Print results
printf('\nTotal required length of the welds(lTotal) = %f or %f mm\n',lTotal,lround)
