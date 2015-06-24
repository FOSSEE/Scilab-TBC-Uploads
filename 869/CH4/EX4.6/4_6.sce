clc
//initialisation of variables
W= -300 //lb
r= 4 //in
x1= 2 //ft
x2= 3 //ft
x3= 1 //ft
y1= 1 //ft
x4= 3 //in
//CALCULATIONS
F= -W*r/(y1*12)
By= -W*x1/(x1+x2)
Bz= -F*(x1+x2+x3+(x4/12))/(x1+x2)
Ay= -W-By
Az= -F-Bz
//RESULTS
printf ('Ay = %.2f lb',Ay)
printf (' \n By=%.2f lb',By)
printf (' \n Az=%.2f lb',Az)
printf (' \n Bz=%.2f lb',Bz)
printf (' \n F=%.2f lb',F)
