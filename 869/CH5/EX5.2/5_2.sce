clc
//initialisation of variables
W= -100 //lb
angle= 45 //degrees
x1= 2 //ft
x2= 2 //ft
y1= 2 //ft
y2= 4 //ft
Fx= 200 //lb
//CALCULATIONS
Cx= Fx*y1/y2
Bx= Fx+Cx
By= (y2*Bx+x1*(-W))/(x1+x2)
Cy= By
Ax= Bx
Ay= W+By
//RESULTS
printf ('Ax= %.3f lb',Ax)
printf (' \n Ay=%.2f lb',Ay)
printf (' \n Bx=%.3f lb',Bx) 
printf (' \n By=%.2f lb',By) 
printf (' \n Cx=%.2f lb',Cx)
printf (' \n Cy=%.2f lb',Cy) 
