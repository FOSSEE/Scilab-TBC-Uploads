clc
//initialisation of variables
Fc= 500 //lb
Fd= 1000 //lb
xc= 2 //in
xd= 8 //in
y= 6 //in
//CALCULATIONS
Ay= Fc+Fd
Bx= (Fc*xc+Fd*xd)/y
Ax= Bx
A= sqrt(Ax^2+Ay^2)
//RESULTS
printf ('A= %.f lb',A)
printf (' \n B=%.f lb',Bx)
