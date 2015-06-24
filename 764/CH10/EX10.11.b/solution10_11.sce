
//Obtain path of solution file
path = get_absolute_file_path('solution10_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_11.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions10_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Calculate the torque transmitted by each pair Mt (N-m)
Mt = T/p
//Calculate the force required to transmit the torque P1 (N)
P1 = (4 * Mt * 1000)/(mu * (D + d))
//Calculate the force exerted by each spring P (N)
P = P1/ns
//Calculate the Wahl Factor K
K = (((4 * C) - 1)/((4 * C) - 4)) + (0.615/C)
//Assume the wire diameter to be 1mm d
d = 1
//Calculate the shear stress in the spring tau (N/mm2)
tau = (K * 8 * P * C)/(%pi * (d^2))
trials = 0
//Load .csv file containing data of table10.1 on page 402
warning("off")
numeric = read_csv(path + filesep() + 'table10_1.csv')
while (gr~=1 & gr~=2 & gr~=3 & gr~=4)
    printf("\n")
    gr = input("Enter appropriate steel grade: ")
end
if (gr == 1 )
    col = 2
elseif (gr == 2)
    col = 3
elseif (gr == 3)
    col = 4
elseif (gr == 4)
    col = 5
end
row = 4
//Calculate the wire diameter dNew (mm)
for i = 1:1:%inf
    trials = trials + 1
    dNew = evstr(numeric(row, 1))
    tauNew = tau/(dNew^2)
    Sut = evstr(numeric(row, col))
    taud = (r/100)*Sut
    if (taud > tauNew)
        break()
    end
    row = row + 1
end
//Calculate the mean coil diameter DNew (mm)
DNew = C * dNew
//Calculate the total number of coils
Nt = active_coils(endtype, N)
//Calculate the solid length of the spring s (mm)
s = Nt * dNew
//Calculate the maximum deflection of the spring deltamax (mm)
deltamax = (8 * P * (DNew^3) * N)/(G * (dNew^4))
//Calculate the free length of the spring len (mm)
len = ceil(s + ((Nt - 1)*g) + deltamax)
//Print results
printf("\nNumber of trials= %d\n",trials)
printf("\nWire diameter(dNew) = %f mm\n",dNew)
printf("\nMean coil diameter(DNew) = %f mm\n",DNew)
printf("\nNumber of active coils(N) = %d\n",N)
printf("\nTotal number of coils(Nt) = %d\n",Nt)
printf("\nSolid length of the spring(s) = %f mm\n",s)
printf("\nFree length of the spring(len) = %f mm\n",len)
