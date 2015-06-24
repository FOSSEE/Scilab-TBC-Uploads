// Example 2.2, page no-37
clear
clc

A=45000    //Apogee in km
P=7000     //Perigee in km
//(a)
a=(A+P)/2
//(b)
e=(A-P)/(2*a)
//(c)
e=(floor(e*100))/100
d=a*e

printf("(a)\nSemi-major axis of elliptical orbit is %d km",a)
printf("\n(b)\nEccentricity = %.2f",e)
printf("\n(c)\nThe distance between centre of earth and centre of ellipse is %d km ",d)
