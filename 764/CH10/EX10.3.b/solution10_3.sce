
//Obtain path of solution file
path = get_absolute_file_path('solution10_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the permissible shear stress for the spring tau (N/mm2)
tau = (30/100)*Sut
//Calculate the factor K * (C^3) fac
fac = (%pi * (D^2) * tau)/(8 * P * 1000)
//Get appropriate values of C and K
for i = 1:1:length(fact)-1
    if (fac > fact(1, i) & fac < fact(1, (i+1))) then
        C = Cval(1, (i+1))
        K = Kval(1, (i+1))
    end
end
//Calculate the wire diameter d (mm)
d = D/C
dround = ceil(d)
//Calculate the number of active coils N
N = (G * (dround^4))/(8 * (D^3) * k)
//Print results
printf("\nWire diameter(d) = %f or %f mm\n",d,dround)
printf("\nNumber of active coils(N) = %f or %f\n",N,ceil(N))
