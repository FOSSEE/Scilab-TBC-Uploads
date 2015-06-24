//To Find the Moment of Inertia
clc
//Given:
m=60 //kg
d1=75,d2=102 //mm
//Solution:
//Calculating the Frequencies of Oscillation
n1=100/190,n2=100/165 //Hz
//Calculating the Equivalent Lengths of Simple Pendulum
L1=9.81/(2*%pi*n1)^2 //m
L2=9.81/(2*%pi*n2)^2 //m
//Calculating Distance of c.g. from the Small and Big End Centres (h1 and h2), and the Radius of Gyration
function y=f(x)
    h1=x(1)
    h2=x(2)
    kG=x(3)
    y(1)=L1*h1-h1^2-kG^2
    y(2)=L2*h2-h2^2-kG^2
    y(3)=h1+h2-1
endfunction
z=fsolve([1,1,1],f)
h1=z(1),h2=z(2),kG=z(3)
//Calculating the Mass Moment of Inertia of the Rod
I=m*kG^2 //kg-m^2
//Results:
printf("\n\n The Moment of Inertia of the Rod, I = %d kg-m^2.\n",I)
printf(" The C.G is at a Distance of h1 = %.3f m from the Small End Centre.\n\n",h1)