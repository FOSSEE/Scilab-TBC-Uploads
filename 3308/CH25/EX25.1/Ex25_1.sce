clc 
// Given that
D=200//in mm Grinding Wheel diameter 
d=0.05//in mm depth of cut
v=30//m/min workpiece velocity
V=1800//in m/min wheel velocity

// Sample Problem on page no. 713

printf("\n # Chip Dimensions in Surface Grinding # \n")

l=sqrt(D*d)
l1=l/2.54*(10^-1)
printf("\n\n Undeformed Chip Length = %f mm",l1)

//the answer in the book is approximated to 0.13 in

//assume
C=2//in mm
r=15
t=sqrt(((4*v)/(V*C*r))*sqrt(d/D))
t1=t/2.54*(10^-1)
printf("\n\n Undeformed chip Thickness = %f in",t1)

//the answer in the book is approximated to 0.00023in



