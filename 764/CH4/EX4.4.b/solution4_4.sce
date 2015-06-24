
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
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_4.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Permissible stresses (N/mm2)
//Compressive stress sigmac
sigmac = (2 * Syt)/fs
//Yield strength in shear of the material Ssy (N/mm2)
Ssy = (50/100)*Syt
//Shear stress tau
tau = Ssy/fs
//Tensile stress sigmat
sigmat = Syt/fs
//Calculate the load acting on the rods P (N)
P = (%pi/4)*((d^2) * sigmat)
//Calculate inside diameter of the socket d2 (mm)
//a,b,c are the coefficients of the resulting quadratic equation
//ax^2 + bx + c = 0  x=d2
a = (%pi/4)*sigmat
b = (-1)*(t * sigmat)
c = (-1)*(P)
d2 = quadratic(a, b, c)
d2 = round_five(d2)
//Calculate outside of socket d1 (mm)
//a,b,c are the coefficients of the resulting quadratic equation
//ax^2 + bx + c = 0  x=d1
a = (%pi/4)*(sigmat)
b = (-1)*(t * sigmat)
c = (((-1 * (%pi/4) * (d2^2))+(t * d2))*sigmat)-(P)
d1 = quadratic(a, b, c)
d1 = round_five(d1)
//Calculate daimeter of socket collar d4 (mm)
d4 = (P/(sigmac * t)) + d2
d4 = round_five(d4)
//Calculate dimensions of a and c (mm)
a = P/(2 * d2 * tau)
a = round_five(a)
c = P/(2 * (d4 - d2) * tau)
c = round_five(c)
//Print results
printf('\nLoad acting on rods(P) = %f N\n',P)
printf('\nInside diameter of socket(d2) = %f mm\n',d2)
printf('\nOutside diameter of socket(d1) = %f mm\n',d1)
printf('\nDiameter of socket collar(d4) = %f mm\n',d4)
printf('\na = %f mm\n\nc = %f mm\n',a,c)

