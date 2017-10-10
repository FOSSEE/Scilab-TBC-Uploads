//Example 5_4
clc();
clear;
//To calculate the inter planar distance
a=0.82     //units in nm
b=0.94      //units in nm
c=0.75       //units in nm
h=1
k=2
l=3
d=1/sqrt((((h/a)^2)+((k/b)^2)+((l/c)^2)))          //units in nm
printf("The Distance between (1,2,3) planes and (2,4,6) planes is d123=%.2fnm and d246=%.2fnm",d,d/2)
//In textbook the answer is printed wrong as d123=0.11nm and d246=0.055nm but the correct answers are d123=0.21nm and d246=0.11nm 
