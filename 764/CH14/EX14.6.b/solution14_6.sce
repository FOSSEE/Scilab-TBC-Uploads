
//Obtain path of solution file
path = get_absolute_file_path('solution14_6.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_6.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the kW rating of the chain
kW = kWd * Ks/(K1 * K2)
printf("\nChoose appropriate chain from table 14.2 on page 550 for %f kW power transmitted at %f rpm\n",kW,n1)
printf("\nHere, we choose chain 12A (13.12 kW rating (by interpolation))\n")
//Calculate the pitch circle diameter of the driving and the driven sprockets D1 and D2 (mm)
D1 = p/sind(180/z1)
z2 = floor(z1 * n1/((n2max + n2min)/2))
D2 = p/sind(180/z2)
//Calculate the centre distance between two sprockets a (mm)
a = 40 * p
//Calculate the number of chain links Ln
Ln = 2*(a/p) + (z1 + z2)/2 + ((z2 - z1)/(2*%pi))^2 * (p/a)
Lnround = floor(Ln)
val = (Lnround - (z1 + z2)/2)
//Calculate the correct centre distance anew (mm)
anew = (p/4)*(val + sqrt(val^2 - 8*((z2 - z1)/(2*%pi))^2))

//ALTERNATIVE DESIGN (add prefix alt_ to each variable name)
//Calculate the alternate kW rating of the chain
alt_kW = kWd * Ks/(alt_K1 * K2)
printf("\nChoose appropriate chain from table 14.2 on page 550 for %f alternate kW power transmitted at %f rpm\n",alt_kW,n1)
printf("\nHere, we choose chain 8A (3.61 kW rating (by interpolation))\n")
//Calculate the output speed alt_n2 (rpm)
alt_n2 = (alt_z1/alt_z2)*n1
//Calculate the centre distance between two sprockets alt_a (mm)
alt_a = 30 * alt_p
//Calculate the number of chain links alt_Ln
alt_Ln = 2*(alt_a/alt_p) + (alt_z1 + alt_z2)/2 + ((alt_z2 - alt_z1)/(2*%pi))^2 * (alt_p/alt_a)
alt_Lnround = floor(alt_Ln)
alt_val = (alt_Lnround - (alt_z1 + alt_z2)/2)
//Calculate the correct centre distance alt_anew (mm)
alt_anew = (alt_p/4)*(alt_val + sqrt(alt_val^2 - 8*((alt_z2 - alt_z1)/(2*%pi))^2))

//Print results
printf("\nNormal Design\n")
printf("\nPitch circle diameter of the driving sprocket(D1) = %f mm\n",D1)
printf("\nPitch circle diameter of the driven sprocket(D2) = %f mm\n",D2)
printf("\nNumber of chain links(Ln) = %f or %f\n",Ln,Lnround)
printf("\nCorrect centre distance between the sprockets(anew) = %f mm\n",anew)
printf("\nAlternate Design\n")
printf("\nNumber of chain links(Ln) = %f or %f\n",alt_Ln,alt_Lnround)
printf("\nCorrect centre distance between the sprockets(anew) = %f mm\n",alt_anew)
