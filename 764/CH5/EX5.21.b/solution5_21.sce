
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution5_21.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_21.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate weight of the object W (N)
W = m * 9.81
//Calculate maximum bending moment Mb (N-mm)
Mb = (W * l)/4
//Assume length of one side of the beam cross-section to be 1mm a
a = 1
//Calculate second moment of area of beam cross-section I (mm4)
I = (a^4)/12
//Calculate value of y (mm)
y = a/2
//Calculate static stress sigmaS (N/mm2)
sigmaS = (Mb * y)/I
//Calculate static deflection deltaS (mm)
deltaS = (W * (l^3))/(48 * E * I)
//Calculate permissible stress P (N/mm2)
P = Syt/fs
//Calculate the actual value of a (mm)
//Coefficients of the resulting cubic equation
a = (P^2)/(sigmaS^2)
b = 0
c = (-1)*((2 * h)/deltaS)
d = (-1)*((2 * P)/sigmaS)
//Define polynomial
pol = [a b c d]
//Calculate roots
r = roots(pol)
real_part = real(r)
if (real_part(1) > 0) then
    a = real_part(1)
elseif (real_part(2) > 0)
    a = real_part(2)
else
    a = real_part(3)
end
//Round-up value of a
a = round_five(a)
//Check for impact stresses
sigmaNew = sigmaS/(a^3)
deltaNew = deltaS/(a^4)
Impact = sigmaNew * (1 + sqrt(1 + ((2 * h)/deltaNew)))
//Print results
printf('\nLength of side of the cross-section = %f mm\n',a)
printf('\nCross-section of the beam = %f x %f mm2\n',a,a)
if (Impact < P) then
    printf('\nDesign is safe\n')
else
    printf('\nDesign is not safe\n')
end
