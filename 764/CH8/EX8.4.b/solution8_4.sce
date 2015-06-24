
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Assume the length of the parallel fillet weld to be 1mm l
l = 1
//Calculate the strength of the transverse fillet weld P1 (N)
P1 = 0.707 * h * w * sigmat
//Calculate the strength of the parallel fillet weld P2 (N)
P2 = 1.414 * h * l * tau
//Calculate the actual length of the parallel fillet weld l (mm)
l = ((P * 1000) - P1)/P2
//Total required length of each parallel weld lTotal (mm)
lTotal = l + lExt
lround = round_five(lTotal)
//Print results
printf('\nTotal required length of each parallel weld(lTotal) = %f or %f mm\n',lTotal,lround)

