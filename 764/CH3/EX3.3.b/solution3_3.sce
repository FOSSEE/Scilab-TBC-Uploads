
//Obtain path of solution file
path = get_absolute_file_path('solution3_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data3_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
printf('\nMaximum diameter of hub is: %f mm\n',(Dh + Uh))
printf('\nMinimum diameter of hub is: %f mm\n',(Dh + Lh))
printf('\nMaximum diameter of shaft is: %f mm\n',(Ds + Us))
printf('\nMinimum diameter of shaft is: %f mm\n',(Ds + Ls))
printf('\nMaximum interference is: %f mm\n',((Ds + Us)-(Dh + Lh)))
printf('\nMinimum interference is: %f mm\n',((Ds + Ls)-(Dh + Uh)))
//Refer the table given on page 71
//Array for upper limit of hub diameter in A,B and C groups respectively U1
U1 = {(Dh + Uh - 0.017),(Dh + Uh - 0.009),(Dh + Uh)}
//Array for lower limit of hub diameter in A,B and C groups respectively L1
L1 = {(Dh + Lh),(Dh + Lh + 0.008),(Dh + Lh + 0.016)}
//Array for upper limit of shaft diameter in A,B and C groups respectively U2
U2 = {(Ds + Us - 0.011),(Ds + Us - 0.004),(Ds + Us)}
//Array for lower limit of shaft diameter in A,B and C groups respectively L2
L2 = {(Ds + Ls),(Ds + Ls + 0.005),(Ds + Ls + 0.012)}
printf('\nMaximum interferences for A, B and C are as follows:\n')
for i = 1:1:3
    Imax(i) = U2(i) - L1(i)
//Check the given condition
    if(0.030<Imax(i) & Imax(i)<0.050)
        printf('%f mm\n',Imax(i))
    end
end
printf('\nMinimum interferences for A, B and C are as follows:\n')
for i = 1:1:3
    Imin(i) = L2(i) - U1(i)
//Check the given condition
    if(0.030<Imin(i) & Imin(i)<0.050)
        printf('%f mm\n',Imin(i))
    end
end
