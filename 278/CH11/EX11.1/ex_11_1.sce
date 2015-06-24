//find safe tensile load
clc
//soltuion
//given
d=30//mm
ft=42//N/mm^2
//using table 11.1,area corresponding to d=30mm is A=561//N/mm^2
A=561//mm^2
F=A*ft//N
printf("the value of force is,%f N",F)