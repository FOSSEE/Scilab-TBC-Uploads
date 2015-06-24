
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_17.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_17.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible stresses for steel parts sigmat1 (N/mm2)
sigmat1 = Syt/fs
//Compressive stress sigmac1 (N/mm2)
sigmac1 = sigmat1
//Yield strength in shear Ssy (N/mm2)
Ssy = (50/100)*Syt
//Shear stress tau1 (N/mm2)
tau1 = Ssy/fs
//For cast iron parts
//Permissible tensile stress sigmat2 (N/mm2)
sigmat2 = Sut/fs
//Calculate the force acting on the cover F (N)
F = (%pi/4)*(p * (D^2))
//Calculate the stressed area of the screw a (mm2)
a = F/sigmac1
//Select the standard screw from the table
for i = 1:1:4
    if(a < area(i))
        break
    end
end
//Print the size of the standard screw selected
if(i==1)
    printf('\nSelect M30 screw\n')
    d1 = 30
elseif(i==2)
    printf('\nSelect M36 screw\n')
    d1 = 36
elseif(i==3)
    printf('\nSelect M42 screw\n')
    d1 = 42
else
    printf('\nSelect M48 screw\n')
    d1 = 48
end
//Calculate the maximum bending moment on the beam Mb (N-mm)
Mb = l * (F/2)
//Assume the thickness of the beam to be 1mm b
b = 1
h = ratio * b
//Calculate the second moment of area I (mm4)
I = (b * ((ratio * b)^3))/12
//Calculate the value of y (mm)
y = h/2
//Calculate the true value of b (mm)
b = ((Mb * y)/(sigmat1 * I))^(1/3)
b = round_five(b)
//Calculate the true value of h (mm)
h = ratio * b
//Calculate the value of d0 (mm)
d0 = d1 + (b/2) + (b/2)
//Calculate the diameter of the pins d (mm)
d = (((F/2) * 4)/(2 * %pi * tau1))^(1/2)
//Calculate the diameter of links 1 and 2 d2 (mm)
d2 = (((F/2) * 4)/(%pi * sigmat1))^(1/2)
//Maximum length of the vessel extension e (mm)
e = l - (D/2)
//Calculate the maximum bending moment on the extension Mb1 (N-mm)
Mb1 = (F/2)*e
//Assume the width of extension to be 1mm b1
b1 = 1
h1 = ratio * b1
//Calculate y1 (mm)
y1 = h1/2
//Calculate I1 (mm4)
I1 = (b1 * (h1^3))/12
//Calculate the true value of b1 (mm)
b1 = ((Mb1 * y1)/(sigmat2 * I1))^(1/3)
b1 = round_five(b1)
//Calculate the true value of h1
h1 = ratio * b1
//Print results
printf('\nThe nominal diameter and pitch of the screw are %f mm and %f mm respectively\n',d1,pitch(i))
printf('\nThe width of the beam cross-section(h) = %f mm\n',h)
printf('\nThe thickness of the beam cross-section(b) = %f mm\n',b)
printf('\nThe value of d0 = %f mm\n',d0)
printf('\nThe diameter of the pins(d) = %f mm\n',d)
printf('\nThe diameter of links 1 and 2(d2) = %f mm\n',d2)
printf('\nThe width of the vessel extension cross-section(h1) = %f mm\n',h1)
printf('\nThe thickness of the vessel extension cross-section(b1) = %f mm\n',b1)


