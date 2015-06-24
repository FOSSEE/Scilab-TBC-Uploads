clc 
//Initialization of variables
weight = 9800 //Kg
g=9.81  //m/s^2
a=2 //m/s^2
//calculations
m=weight/g
Wm=m*a
//results
printf("Density on earth =%.2f Kg/m^3",m)
printf("\n Weight on moon = %.2f N",Wm)
printf("\n Density on moon remains unchanged and is equal to %.2f Kg/m^3",m)
