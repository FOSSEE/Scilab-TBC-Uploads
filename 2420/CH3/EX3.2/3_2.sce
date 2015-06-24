clc
clear
//Initialization of variables
d=3.25 //in
str=4 //in
v=6 //cu in
//calculations
Dp=d^2 *%pi*str/4
r=(Dp+v)/v
//results
printf("Compression ratio = %.2f",r)
