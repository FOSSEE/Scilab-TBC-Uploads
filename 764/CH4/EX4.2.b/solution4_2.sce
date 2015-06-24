
//Function to calculate roots of a quadratic equation
function[r] = quadratic(a,b,c)
    //Calculate discriminant D
    D = (b^2)-(4 * a * c)
    r1 = ((-1 * b)+ sqrt(D))/(2 * a)
    r2 = ((-1 * b)- sqrt(D))/(2 * a)
    if(r1 > 0)
        r = r1
    else
        r = r2
    end
endfunction

//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    v = v + (5 - rem)
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_2.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Refer Fig.4.17 on page 93
//For rod
//Permissible tensile stress sr1 (N/mm2)
sr1 = Syt/f1
//Permissible compressive stress sr2 (N/mm2)
sr2 = 2 * sr1
//Yield strength of the material in shear Ssy (N/mm2)
Ssy = (50/100)*Syt  
//Permissible shear stress tau1 (N/mm2)
tau1 = Ssy/f1
//For cotter
//Permissible tensile stress sc1 (N/mm2)
sc1 = Syt/f2
//Permissible shear stress tau2 (N/mm2)
tau2 = Ssy/f2
//Calculate diameter of the rods d (mm)
d = sqrt((4 * P * 1000)/(%pi * sr1))
//Round up d
d = ceil(d)
//Calculate thickness of cotter t (mm)
t = 0.31 * d
//Round up t
t = ceil(t)
//Calculate the diameter of spigot d2 (mm)
//a,b,c are the coefficients of the resulting quadratic equation
//ax^2 + bx + c = 0  x=d2
a = (%pi/4)*sr1
b = -1* t * sr1
c = -1 * P * 1000
//Call the declared functions
d2 = quadratic(a, b, c)
d2 = round_five(d2)
//Calculate outer daimeter of the socket d1 (mm)
//a,b,c are the coefficients of the resulting quadratic equation
//ax^2 + bx + c = 0  x=d1
a = (%pi/4)*(sr1)
b = (-1)*(t * sr1)
c = (((-1 * (%pi/4) * (d2^2))+(t * d2))*sr1)-(P * 1000)
//Call the declared functions
d1 = quadratic(a, b, c)
d1 = round_five(d1)
//Calculate diameters of spigot collar d3 and socket collar d4 (mm)
d3 = 1.5 * d
d3 = ceil(d3)
d4 = 2.4 * d
d4 = round_five(d4)
//Calculate dimensions a1 and c1 (mm)
a1 = 0.75 * d
a1 = ceil(a1)
c1 = 0.75 * d
c1 = ceil(c1)
//Calculate width of cotter b (mm)
b = (P * 1000)/(2 * tau2 * t)
//Calculate thickness of spigot collar t1 mm
t1 = 0.45 * d
t1 = round_five(t1)
//Print results
printf('\nDiameter of the rods(d) = %f mm\n',d)
printf('\nThickness of cotter(t) = %f mm\n',t)
printf('\nDiameter of spigot(d2) = %f mm\n',d2)
printf('\nOuter diameter of socket(d1) = %f mm\n',d1)
printf('\nDiameter of spigot collar(d3) = %f mm\n',d3)
printf('\nDiameter of socket collar(d4) = %f mm\n',d4)
printf('\nWidth of cotter(b) = %f mm\n',b)
printf('\nThickness of spigot collar(t1) = %f mm\n',t1)
//Check for crushing and shear stresses in spigot end
sigc = (P * 1000)/(t * d2)
tauc = (P * 1000)/(2 * a1 * d2)
//Check for crushing and shear stresses in socket end
sigs = (P * 1000)/((d4 - d2) * t)
taus = (P * 1000)/(2 * (d4 - d2) * c1)
if ((sigc < sr2) & (tauc < tau1) & (sigs < sr2) & (taus < tau1))
    printf('\nDesign of cotter joint is safe\n')
else
    printf('\nDesign of cotter joint is not safe\n')
end
