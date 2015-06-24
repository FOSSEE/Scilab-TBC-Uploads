
//Obtain path of solution file
path = get_absolute_file_path('solution10_20.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_20.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate the maximum force in the spring Pmax (N)
Pmax = 2 * Pmin
//Calculate the factor containing C and K fact
fact = (tau * D^2 * %pi)/(8 * Pmax)
//Assume values of C and calculate the factor
for C = 2:1:%inf
    //Calculate the Wahl Factor K
    K = (4*C - 1)/(4*C -4) + 0.615/C
    val = C * (C+1)^2 * K
    if (val > fact)
        break
    end
end
//Calculate the wire diameter d (mm)
d = ceil(D/(C + 1))
//Calculate the mean coil diameter Dmean (mm)
Dmean = D - d
Cnew = Dmean/d
//Calculate the new Wahl Factor Knew
Knew = (4*Cnew - 1)/(4*Cnew -4) + 0.615/Cnew
///Calculate the maximum torsional shear stress tauMax (N/mm2)
tauMax = (Knew * 8 * Pmax * Cnew)/(%pi * d^2)
if (tau > tauMax)
    printf("\nThe design is safe\n")
else
    printf("\nThe design is not safe\n")
end
//Print results
printf("\nWire diameter(d) = %f mm\n",d)
printf("\nMean coil diameter(Dmean) = %f mm\n",Dmean)
