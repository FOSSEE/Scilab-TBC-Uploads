
//Obtain path of solution file
path = get_absolute_file_path('solution14_5.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_5.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the pitch circle diameter of the driving sprocket D (mm)
D = p/sind(180/z1)
//Calculate the maximum outer diameter Dmax (mm)
Dmax = D + 1.25 * p - d1
//Calculate the minimum outer diameter Dmin (mm)
Dmin = D + p * (1 - 1.6/z1) - d1
//Calculate the outer diameter Da (mm)
Da = (Dmax + Dmin)/2
//Calculate the maximum roller seating diameter rmax (mm)
rmax = 0.505 * d1 + 0.069 * (d1^(1/3))
//Calculate the minimum roller seating diameter rmin (mm)
rmin = 0.505 * d1
//Calculate the roller seating diameter ri (mm)
ri = (rmax + rmin)/2
//Calculate the root diameter Df (mm)
Df = D - 2 * ri
//Calculate the maximum tooth flank radius remax (mm)
remax = 0.008 * d1 * (z1^2 + 180)
//Calculate the minimum tooth flank radius remin (mm)
remin = 0.12 * d1 * (z1 + 2)
//Calculate the tooth flank radius re (mm)
re = (remax + remin)/2
//Calculate the tooth side radius rx (mm)
rx = p
//Calculate the tooth width bf1 (mm)
bf1 = 0.95 * b1
//Calculate the tooth side relief ba (mm)
bamax = 0.15 * p
bamin = 0.1 * p
ba = (bamax + bamin)/2
//Print results
printf("\nOuter diameter(Da) = %f mm\n",Da)
printf("\nRoot diameter(Df) = %f mm\n",Df)
printf("\nTooth flank radius(re) = %f mm\n",re)
printf("\nTooth side radius(rx) = %f mm\n",rx) 
printf("\nTooth width(bf1) = %f mm\n",bf1)
printf("\nTooth side relief(ba) = %f mm\n",ba)
