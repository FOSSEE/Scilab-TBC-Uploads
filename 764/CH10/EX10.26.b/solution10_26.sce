
//Obtain path of solution file
path = get_absolute_file_path('solution10_26.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_26.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the values of M,C1 and C2
M = (6/(%pi * log(r1)))*((r1 - 1)/r1)^2
C1 = (6/(%pi * log(r1)))*(((r1 - 1)/log(r1)) - 1)
C2 = (6/(%pi * log(r1)))*(r1 - 1)/2
//Assume thickness of the washer to be 1mm t
t = 1
//Calculate the height of the washer h (mm)
h = r2 * t
//Calculate the actual thickness of the washer tact (mm)
tact = sqrt((P/sigma)*(C1 * (h/2) + C2))*1000
//Caluclate the actual free height of the washer hact (mm)
hact = r2 * tact
//Calculate the outer diameter of the washer d0 (mm)
d0 = sqrt((4 * E * 10^6 * hact/1000 * (tact/1000)^3)/((1 - mu^2) * M * P))*1000
//Calculate th inner diameter of the washer di (mm)
di = d0/r1
//Print results
printf("\nThickness of washer(t) = %f mm\n",tact)
printf("\nFree height of the washer(h) = %f mm\n",hact)
printf("\nOuter diameter of the washer(d0) = %f mm\n",d0)
printf("\nInner diameter of the washer(di) = %f mm\n",di)
