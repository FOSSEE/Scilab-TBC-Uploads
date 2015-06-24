
//Obtain path of solution file
path = get_absolute_file_path('solution10_8.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_8.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the force on the valve when it is closed Pvc (N)
Pvc = (%pi/4)*(dia^2)*(Pc)
//Calculate the force on the spring when the valve is closed Psc (N)
Psc = (Pvc * dist_v)/(dist_s)
//Calculate the force on the valve when it is open Pvo (N)
Pvo = (%pi/4)*(dia^2)*(Po)
//Calculate the force on the spring when the valve is open Pso (N)
Pso = (Pvo * dist_v)/(dist_s)
//Calculate the spring extension delta (mm)
delta = (l * dist_s)/dist_v
//Calculate the spring stiffness k (N/mm)
k = (Pso - Psc)/delta
//Calculate the permissible shear stress for the spring wire tau (N/mm2)
tau = (r/100)*Sut
//Calculate the Wahl Factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Determine maximum spring force P (N)
if (Psc > Pso) then
    P = Psc
else
    P = Pso
end
//Calculate the spring wire diameter d (mm)
d = sqrt(K * ((8 * P * C)/(%pi * tau)))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active coils N
N = (G * (dround^4))/(8 * (D^3) * k)
Nround = ceil(N)
//Print results
printf("\nWire diameter(d) = %f or %f mm\n", d, dround)
printf("\nMean coil diameter(D) = %f mm\n", D)
printf("\nNumber of active coils(N) = %f or %f\n", N, Nround)
