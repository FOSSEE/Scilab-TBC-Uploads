
//Obtain path of solution file
path = get_absolute_file_path('solution10_17.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_17.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_17.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the ratio d1/d2 r
r = C/(C - 2)
//Calculate the force transmitted through inner spring P2 (N)
P2 = P/(1 + r^2)
//Calculate the force transmitted through outer spring P1 (N)
P1 = P - P2
//Calculate the Wahl Factor K
K = (4*C - 1)/(4*C - 4) + 0.615/C
//Calculate the wire diameter of the outer spring d1 (mm)
d1 = sqrt((K * 8 * P1 * C)/(%pi * tau))
d1round = ceil(d1)
//Calculate the mean coil diameter of the outer spring D1 (mm)
D1 = C * d1round
//Calculate the wire diameter of the inner spring d2 (mm)
d2 = sqrt((K * 8 * P2 * C)/(%pi * tau))
d2round = ceil(d2)
//Calculate the mean coil diameter of the inner spring D2 (mm)
D2 = C * d2round
//Calculate the active number of coils of the outer spring N1
N1 = ceil((delta * G * d1round^4)/(8 * P1 * D1^3))
//Calculate the total number of coils in the outer spring Nt1
Nt1 = active_coils(endtype, N1)
//Calculate the total number of coils in the inner spring Nt2
Nt2 = ceil(Nt1 * d1/d2)
//Calculate the active number of coils of the inner spring N2
N2 = Nt2 - (Nt1 - N1)
//Print results
printf("\nAxial force transmitted by the outer spring(P1) = %f N\n",P1)
printf("\nAxial force transmitted by the inner spring(P2) = %f N\n",P2)
printf("\nWire diameter of the outer spring(d1) = %f mm\n",d1round)
printf("\nMean coil diameter of the outer spring(D1) = %f mm\n",D1)
printf("\nWire diameter of the inner spring(d2) = %f mm\n",d2round)
printf("\nMean coil diameter of the inner spring(D2) = %f mm\n",D2)
printf("\nNumber of active coils in outer spring(N1) = %f\n",N1)
printf("\nNumber of active coils in inner spring(N2) = %f\n",N2)