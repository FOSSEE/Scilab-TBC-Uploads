clc
clear
//Initialization of variables
heat=54.5 //Btu/hr ft
d=0.811 //in
h=2.5 //Btu/hr ft^2 F
ts=100 //F
km=220 //Btu/hr ft F
//calculations
t2=heat*12/(h*%pi*d) +ts
w=heat*4*144/(%pi*d^2)
t1=w*(d/2)^2 /(4*144*km) + t2
//results
printf("Surface temperature of transmission line = %.1f F",t2)
printf("\n Rate of heat generaton per unit volume of wire = %d Btu/hr ft^2",w)
printf("\n Max. temperature in the line = %.2f F",t1)
disp("The answers in the textbook are a bit different due to rounding off errors")
