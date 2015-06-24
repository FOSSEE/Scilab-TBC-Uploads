
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0) then
    v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_21.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_21.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible tensile stress sigma (N/mm2)
sigma = Sut/fs
//Assume value of t to be 1mm
t = 1
//All dimensions in mm
bi = 3 * t
h = 3 * t
Ri = 2 * t
Ro = 5 * t
ti = t
to = 0.75 * t
Rn = ((ti * (bi - to)) + (to * h))/((bi - to)*log((Ri + ti)/Ri)+(to * log(Ro/Ri)))
R = Ri + ((((1/2)*to*(h^2)) + ((1/2)*(ti^2)*(bi - to)))/((to*h) + (ti*(bi - to))))
//Calculate eccentricity e (mm)
e = R - Rn
hi = Rn - Ri
A = (bi * ti) + (to * Ri)
//Calculate the direct tensile stress T (N/mm2)
T = (P * 1000)/A
//The polynomial obtained is as follows
C = (((R * P * 1000 * hi)/(A * e * Ri)) + T)
D = (P * 1000 * l * hi)/(A * e * Ri)
p = [(-1 * sigma) 0 C D]
r = roots(p)
//Calculate the true value of t (mm)
real_part = real(r)
for i = 1:1:3
    if(real_part(i)>0)
        t = real_part(i)
        break
    end
end
t = round_five(t)
//Print results
printf('\nThe value of t = %f mm\n',t)

  
