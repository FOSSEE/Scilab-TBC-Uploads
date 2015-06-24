
//Function to round-up a value such that it is divisible by 5
function[v] = round_five(w)
    v = ceil(w)
    rem = pmodulo(v,5)
    if (rem ~= 0)
        v = v + (5 - rem)
    end
endfunction

//Obtain path of solution file
path = get_absolute_file_path('solution4_10.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_10.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Let the outer diameter of the cross-section be 1mm d0
d0 = 1
//Calculate the direct compressive stress D (N/mm2)
D = (P * 1000)/((%pi/4)*((1 - (ratio^2))*(d0^2)))
//Calculate the value of y (mm)
y = d0/2
//Calculate the second moment of area I (mm4)
I = (%pi/64)*((1 - (ratio^4))*(d0^4))
//Calculate the tensile stress due to bending moment B (N/mm2)
B = (P * 1000 * e * y)/I
//Coefficients of the resultant cubic equation
p = [sigmat 0 D (-1 * B)]
r = roots(p)
real_part = real(r)
for i = 1:1:3
    if(real_part(i)>0)
        d0 = real_part(i)
        break
    end
end
d0 = round_five(d0)
//Print results
printf('\nOuter diameter(d0) = %f mm\n',d0)
printf('\nInner diameter(di) = %f mm\n',(0.8 * d0))
