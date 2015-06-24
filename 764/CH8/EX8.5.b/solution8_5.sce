
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution8_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data8_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the tensile strength of the plate P (N)
P = (w * t)*sigmat
//Calculate the thickness of the weld h (mm)
h = t
//Calculate the strength of the transverse fillet weld P1 (N)
P1 = 0.707 * h * w * sigmat
//Assume the length of the parallel weld to be 1mm l (mm)
l = 1
//Calculate the strength of the double parallel fillet weld P2 (N)
P2 = 1.414 * h * l * tau
//Calculate the actual length of each parallel weld l (mm)
l = (P - P1)/P2
//Total required length of each parallel weld lTotal (mm)
lTotal = l + lExt
lround = round_five(lTotal)
//Print results
printf('\nTotal required length of each parallel weld(lTotal) = %f or %f mm\n',lTotal,lround)
