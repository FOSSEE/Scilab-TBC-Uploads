clc
//initialisation of variables
angle= 15 //degrees
Tyx= -1000 //psi
Txy= 1000 //psi
//CALCULATIONS
Sx= Txy*sind(2*angle)
Tx= Txy*cosd(2*angle)
Sy= Tyx*sind(2*angle)
Ty= Tyx*cosd(2*angle)
Sx1= Txy
Sy1= Tyx
Txy= 0
//RESULTS
printf ('Sx= %.1f psi',Sx)
printf (' \n Tx=%.1f psi',Tx)
printf (' \n Sy=%.1f psi',Sy)
printf (' \n Ty=%.1f psi',Ty)
printf (' \n Sx1=%.1f psi',Sx1)
printf (' \n Sy1=%.1f psi',Sy1)
printf (' \n Txy=%.1f psi',Txy)
