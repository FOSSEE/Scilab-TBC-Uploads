
//Obtain path of solution file
path = get_absolute_file_path('solution4_13.sce')
//Obtain path of data file
datapath = path + filesep() + 'data4_13.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the yield strength in shear Ssy (N/mm2)
Ssy = (50/100)*Syt
//Calculate the permissible shear stress tau (N/mm2)
tau = Ssy/fs
//Calculate the bending moment Mb (N-mm)
Mb = (P * 1000)*v
//Calculate the torsional moment Mt (N-mm)
Mt = (P * 1000)*h
//Assume value of diameter to be 1mm d
d = 1
//Calculate the value of y (mm)
y = d/2
//Calculate the second moment of area I (mm4)
I = (%pi/64)*(d^4)
//Calculate the polar moment of area J (mm4)
J = (%pi/32)*(d^4)
//Calculate the bending shear stress B (N/mm2)
B = (Mb * y)/I
//Calculate the torsional shear stress T (N/mm2)
T = (Mt * (d/2))/J
//Refer Fig.4.40(c) for Mohr's Circle
taumax = sqrt(((B/2)^2) + (T^2))
//Calculate the true value of diameter d (mm)
d = ((taumax/tau)^(1/3))
//Print results
printf('The value of diameter(d) = %f mm\n',d)

