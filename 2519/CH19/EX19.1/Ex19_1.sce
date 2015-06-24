clc
clear
//Initialization of variables
r1=1.12 //in
r2=3.06 //in
t1=203 //F
t2=184 //F
r3=2.09 //in
pow=11.1 //watts
//calculations
km=pow*3.413*(12/r1-12/r2)/(4*%pi*(t1-t2))
dt=pow*3.413*(12/r1-12/r3)/(4*%pi*km)
t3d=t1-dt
//rewsults
printf("The experimental value of thermal conductivity = %.2f Btu/hr ft F",km)
printf("\n Required temperature = %.1f F",t3d)
