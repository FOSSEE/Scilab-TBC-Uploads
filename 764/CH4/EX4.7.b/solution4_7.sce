
//Obtain path of solution file
path = get_absolute_file_path('solution4_7.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_7.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate permissible tensile stress sigmat (N/mm2)
sigmat = Syt/fs
//Assume the wudth of the cross-section to be 1mm t
t = 1
//Calculate direct compressive stress sigmac (N/mm2)
sigmac = P/(t * (ratio * t))
//Calculate maximum bending moment Mb (N-mm)
Mb = P * l
//Calculate y
y = 1.5 * t
//Calculate the second moment of area I (mm4)
I = (t * ((ratio * t)^3))/12
//Calculate tensile bending stress at the lower fibre sigmab(N/mm2)
sigmab = (Mb * y)/I
//Finding the real value of width t (mm)
//On superimposing the stress values, a cubic equation in t is obtained
a = 0
b = (sigmac/sigmat)
c = (-1 * (sigmab/sigmat))
//Define polynomial
p = [1,a,b,c]
//Calculate roots of this polynomial
r = roots(p)
real_part = real(r)
for i = 1:1:3
    if(real_part(i)>0)
        t = real_part(i)
        break
    end
end
//Print results
printf('\nValue of t = %f mm\n',t)
printf('\nArea of cross-section = (%f x %f) mm2\n',t,(ratio * t))





