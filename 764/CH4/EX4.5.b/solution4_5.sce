
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Refer Fig.4.24
//Permissible stresses (N/mm2)
//Tensile stress sigmat
sigmat = Syt/fs
//Compressive stress
sigmac = Syt/fs
//Yield strength in shear for the material Ssy (N/mm2)
Ssy = (50/100)*Syt
//Shear stress tau
tau = Ssy/fs
//Calculate diameter of the rods D (mm)
D = sqrt((4 * P)/(%pi * sigmat))
D = round_five(D)
//Calculate enlarged diameter of rods D1 (mm)
D1 = 1.1 * D
//Calculate dimensions a and b (mm)
a = 0.75 * D
a = round_five(a)
b = 1.25 * D
b = round_five(b)
//Calculate diameter of pin d
d = ((32/(%pi * sigmat))*((P/2)*((b/4) + (a/3))))^(1/3)
d = round_five(d)
//Calculate dimensions d0 and d1
d0 = 2 * d
d1 = 1.5 * d
//Print results
printf('\nDiameter of rods(D) = %f mm\n',D)
printf('\nEnlarged diameter of rods(D1) = %f mm\n',D1)
printf('\nDimensions of a and b are %f mm and %f mm respectively\n',a,b)
printf('\nDiameter of pin(d) = %f mm\n',d)
printf('\nDimensions of d0 and d1 are %f mm and %f mm respectively\n',d0,d1)
//Check for stresses in eye
s1 = (P/(b * (d0 - d)))
c1 = (P/(b * d))
t1 = (P/(b * (d0 - d)))
//Check for stresses in fork
s2 = (P/(2 * a * (d0 - d)))
c2 = (P/(2 * a * d))
t2 = (P/(2 * a * (d0 - d)))
if ((s1<sigmat) & (c1<sigmac) & (t1<tau) & (s2<sigmat) & (c2<sigmac) & (t2<tau))
    printf('\nDesign of knuckle joint is safe\n')
else
    printf('\nDesign of knuckle joint is not safe\n')
end