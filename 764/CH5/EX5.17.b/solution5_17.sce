
//Obtain path of solution file
path = get_absolute_file_path('solution5_17.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_17.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Permissible mean stress sigmaM (N/mm2)
sigmaM = (sigmaMax + sigmaMin)/2
//Permissible amplitude stress sigmaA (N/mm2)
sigmaA = (sigmaMax - sigmaMin)/2
//Assume factor of safety to be 1 n
n = 1
//Calculate maximum mean and amplitude stresses Sm, Sa (N/mm2)
Sm = n * sigmaM
Sa = n * sigmaA
//Factor of safety using Gerber theory n1
//Coefficients of resulting quadratic equation a(n^2)+b(n)+c = 0
a = (Se * (Sm^2))
b = ((Sut^2) * Sa)
c = (-1)*(Se * (Sut^2))
//Define polynomial
p = [a b c]
//Find roots
r = roots(p)
real_part = real(r)
if(real_part(1) > 0)
    n1 = real_part(1)
else
    n1 = real_part(2)
end
//Factor of safety using Soderberg line n2
n2 = 1/((Sa/Se) + (Sm/Syt))
//Factor of safety using Goodman line n3
n3 = 1/((Sa/Se) + (Sm/Sut))
//Factor of safety against static failure n4
n4 = Syt/sigmaMax
//Print results
printf('Factor of safety using Gerber theory = %f\n',n1)
printf('Factor of safety using Soderberg line = %f\n',n2)
printf('Factor of safety using Goodman line = %f\n',n3)
printf('Factor of safety against static failure = %f\n',n4)
