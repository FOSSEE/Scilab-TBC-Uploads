clc
//Example 10.5
//Calculate the pump head
N=1750//rev/min
//1 min 60 sec
omega=2*(%pi)*N/60//radians/sec
Q=100//gal/min
//1 gallon = 231 in^3
//1 ft =12 in
//1 min = 60 sec
d_inlet = 2.067//ft
A_inlet=(%pi)/4*(d_inlet^2)//ft^2
V1=(Q/A_inlet)*231/60/12//ft/s
d_outlet = 1.61//ft
A_outlet=(%pi)/4*(d_outlet^2)//ft^2
V2=(Q/A_outlet)*231/60/12//ft/s
g=32.2//ft/s^2
d_inner=0.086//ft
d_outer=0.336//ft
h=(omega)^2/g*((d_outer^2)-(d_inner)^2)+(V2^2-V1^2)/2/g//ft
printf("The pump head is %f ft",h);