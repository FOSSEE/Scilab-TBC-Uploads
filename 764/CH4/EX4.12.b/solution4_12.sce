
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_12.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress sigmat (N/mm2)
sigmat = Sut/fs
//Calculate the horizontal component of the force Ph (N)
Ph = (P * 1000) * sin(theta)
//Calculate the vertical component of the force Pv (N)
Pv = (P * 1000) * cos(theta)
//Calculate the maximum bending moment Mb (N-mm)
Mb = (Ph * h) + (Pv * r)
//Assume the value of t to be 1mm
t = 1
//Calculate the value of y (mm)
y = t
//Calculate the second moment of area I (mm4)
I = (t * ((ratio * t)^3))/12
//Calculate the bending stress sigmab (N/mm2)
sigmab = (Mb * y)/I
//Calculate the direct tensile stress D (N/mm2)
D = Ph/(ratio * (t^2))
//Coefficients of the resulting cubic equation
p = [sigmat 0 (-1 * D) (-1 * sigmab)]
//Calculate the roots to obtain the the true value of t
r = roots(p)
real_part = real(r)
for i = 1:1:3
    if(real_part(i)>0)
        t = real_part(i)
        break
    end
end
t = round_five(t)
//Print results
printf('\nValue of t = %f mm\n',t)
printf('\nArea of cross-section = (%f x %f) mm2\n',t,(ratio * t))
