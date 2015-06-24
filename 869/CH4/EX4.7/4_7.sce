clc
//initialisation of variables
W= 500 //lb
r= 4 //in
Lx= 3 //in
Ly= 12 //in
Lz= 4 //in
//CALCULATIONS
Tbd= W*(sqrt((-Lx)^2+(-Ly)^2+(-Lz)^2))/Ly
Tcd= Lx*Tbd/(sqrt((-Lx)^2+(-Ly)^2+(-Lz)^2))
Tad= Lz*Tbd/(sqrt((-Lx)^2+(-Ly)^2+(-Lz)^2))
//RESULTS
printf ('Tbd= %.f lb',Tbd)
printf (' \n Tcd=%.f lb',Tcd)
printf (' \n Tad=%.f lb',Tad)
