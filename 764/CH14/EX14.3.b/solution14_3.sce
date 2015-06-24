
//Obtain path of solution file
path = get_absolute_file_path('solution14_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_3.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the kW rating of the chain
kW = kWd * Ks/(K1 * K2)
printf("\nChoose appropriate chain from table 14.2 on page 550 for %f kW power transmitted at %f rpm\n",kW,n1)
printf("\nHere, we choose chain 8A (5.28 kW rating)\n")
//Calculate the number of teeth on driven sprocket z2
z2 = i * z1
//Calculate the number of chain links Ln
Ln = 2*(a/p) + (z1 + z2)/2 + ((z2 - z1)/(2*%pi))^2 * (p/a)
Lnround = ceil(Ln)
val = (Lnround - (z1 + z2)/2)
//Calculate the correct centre distance anew (mm)
anew = (p/4)*(val + sqrt(val^2 - 8*((z2 - z1)/(2*%pi))^2))
//Print results
printf("\nNumber of chain links(Ln) = %f or %f\n",Ln,Lnround)
printf("\nCorrect centre distance between the sprocket axes(a) = %f mm\n",anew)
  