
//Obtain path of solution file
path = get_absolute_file_path('solution14_4.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_4.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the kW rating of the chain
kW = kWd * Ks/(K1 * K2)
printf("\nChoose appropriate chain from table 14.2 on page 550 for %f kW power transmitted at %f rpm\n",kW,n1)
printf("\nHere, we choose chain 12B (18.15 kW rating)\n")
//Calculate the pitch circle of driving and driven pulleys D1 and D2 (mm)
D1 = p/sind(180/z1)
z2 = z1 * (n1/n2)
D2 = p/sind(180/z2)
//Calculate the centre distance between two sprockets a (mm)
a = 40 * p
//Calculate the number of chain links Ln
Ln = 2*(a/p) + (z1 + z2)/2 + ((z2 - z1)/(2*%pi))^2 * (p/a)
Lnround = ceil(Ln)
val = (Lnround - (z1 + z2)/2)
//Calculate the correct centre distance anew (mm)
anew = (p/4)*(val + sqrt(val^2 - 8*((z2 - z1)/(2*%pi))^2))
//Accounting for small sag asag (mm)
asag = (1 - fact) * anew
//Print results
printf("\nPitch circle diameter of the driving sprocket(D1) = %f mm\n",D1)
printf("\nPitch circle diameter of the driven sprocket(D2) = %f mm\n",D2)
printf("\nNumber of chain links(Ln) = %f or %f\n",Ln,Lnround)
printf("\nCorrect centre distance between the sprockets(asag) = %f mm\n",asag)
