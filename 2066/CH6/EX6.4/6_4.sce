clc
clear
//Initialization of variables
Lr=1/10
rhom=2
rhop=1.94
//calculations
Vr=sqrt(Lr)
Tr=Lr/Vr
ar=Vr/Tr
Fr=rhom/rhop *ar*Lr^3
//results
printf("Velocity ratio = %.4f",Vr)
printf("\n Time ratio = %.4f",Tr)
printf("\n Acceleration ratio = %d ",ar)
printf("\n Force ratio = %.6f",Fr)
