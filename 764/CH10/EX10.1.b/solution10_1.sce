
//Obtain path of solution file
path = get_absolute_file_path('solution10_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_1.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])

//Calculate the permissible shear stress for the spring tau (N/mm2)
tau = (50/100)*Sut
//Calculate the Wahl factor K
K = (((4*C)-1)/((4*C)-4)) + (0.615/C)
//Calculate the wire diameter d (mm)
d = sqrt((8 * K * P * C)/(%pi * tau))
dround = ceil(d)
//Calculate the mean coil diameter D (mm)
D = C * dround
//Calculate the number of active coils N
N = (delta * G * (dround^4))/(8 * P * (D^3))
N = ceil(N)
//Calculate the total number of coils Nt
Nt = active_coils(endtype, N)
//Calculate the actual deflection of the spring delta1 (mm)
delta1 = (8 * P * (D^3) * N)/(G * (dround^4))
//Calculate the total axial gap between the coils gtotal (mm)
gtotal = (Nt - 1)*g
//Calculate the solid length of the spring s (mm)
s = Nt * dround
//Calculate the free length of the spring l (mm)
l = s + gtotal + delta1
//Calculate the pitch of the coil p (mm)
p = l/(Nt - 1)
//Print results
printf("\nWire diameter(d) = %f or %f mm\n",d,dround)
printf("\nMean coil diameter(D) = %f mm\n",D)
printf("\nNumber of active coils(N) = %d\n",N)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
printf("\nFree length of the spring(l) = %f or %f mm\n",l,ceil(l))
printf("\nPitch of the coil(p) = %f mm\n",p)
