
//Obtain path of solution file
path = get_absolute_file_path('solution4_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible tensile stress for the link sigmat (N/mm2)
sigmat = Sut/fs
//Assume the value of t to be 1mm
t = 1
//Calculate the direct tensile stress D (N/mm2)
D = (P * 1000)/(t * (ratio * t))
//Calculate the value of y (mm)
y = t
//Calculate the second moment of area I (mm4)
I = (t * ((ratio * t)^3))/12
//Calculate the dimensions of cross-section t
a = (-1 * D) + ((-1 * P * 1000)/I)
b = (-1 * P * 1000 * e)/I
p = [sigmat 0 a b]
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


