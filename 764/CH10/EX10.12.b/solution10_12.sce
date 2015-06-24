
//Obtain path of solution file
path = get_absolute_file_path('solution10_12.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_12.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the maximum spring force P (N)
P = m * 9.81
//Calculate the Wahl Factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Assume the wire diameter to be 1mm d
d = 1
//Calculate the shear stress in the spring tau (N/mm2)
tau = (K * 8 * P * C)/(%pi * (d^2))
trials = 0
warning("off")
numeric = read_csv(path + filesep() + 'table10_2.csv')
while (gr~='SW' & gr~='VW')
    printf("\n")
    gr = input("Enter appropriate steel grade: ","string")
end
if (gr == 'SW')
    col = 2
elseif (gr == 'VW')
    col = 3
end
row = 4
//Calculate the wire diameter dNew (mm)
for i = 1:1:%inf
    trials = trials + 1
    dNew = evstr(numeric(row, 1))
    Sut = evstr(numeric(row, col))
    tauNew = tau/(dNew^2)
    taud = (r/100)*Sut
    if (taud > tauNew)
        break()
    end
    row = row + 1
end
//Calculate the mean coil diameter D (mm)
D = C * dNew
//Calculate the length of each division ld (mm)
ld = l/div
//Calculate the stiffness of the spring k (N/mm)
k = (mi * 9.81)/ld
//Calculate the number of active coils N
N = (G * (dNew^4))/(8 * (D^3) * k)
//Calculate the solid length of the spring s (mm)
s = N * dNew
//Print results
printf("\nNumber of trials= %d\n",trials)
printf("\nWire diameter(dNew) = %f mm\n",dNew)
printf("\nMean coil diameter(DNew) = %f mm\n",D)
printf("\nNumber of active coils(N) = %d\n",N)
printf("\nTotal number of coils(Nt) = %d\n",N)
printf("\nThe helical tension spring has Nt = N\n")
printf("\nSolid length of the spring(s) = %f mm\n",s)
