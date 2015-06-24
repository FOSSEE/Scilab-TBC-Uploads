clc
//initialisation of variables
Dj= 1 //in
Dr= 2 //in
ns= 3 //strokes
h= 2 //ft
//CALCULATIONS
Ap= %pi*Dj^2/4
Ar= %pi*Dr^2/4
Vrj= Ar/Ap
ns1= h*12*Vrj/ns
//RESULTS
printf (' working strokes = %.f strokes',ns1)
