
//Obtain path of solution file
path = get_absolute_file_path('solution10_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_5.sci'
//Clear all
clc
//Execute the data file
exec(datapath)

//Calculate the permissible shear stress for the spring tau (N/mm2)
tau = (50/100)*Sut
//Calculate the Wahl factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Calculate the wire diameter d (mm)
d = sqrt((K * 8 * P * C)/(%pi * tau))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active coils N
N = (delta * G * (dround^4))/(8 * P * (D^3))
Nceil = ceil(N)
//Calculate the required spring rate k (N/mm)
k = P/delta
//Calculate the actual spring rate kact (N/mm)
kact = (G * (dround^4))/(8 * (D^3) * Nceil)
//Print results
printf("\nWire diameter(d) = %f or %f mm\n",d, dround)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nNumber of active coils(N) = %f or %d\n",N, Nceil)
printf("\nRequired spring rate(k) = %f N/mm\n",k)
printf("\nActual spring rate(kact) = %f N/mm\n",kact)
