//Example19.10//

k=45*10^-3;// wear coefficient
P=50;//Kg //Kilograms //Load
x=5;//mm //millimeter //distance
H=235;//kg/mm^2 //hardness of the surface being worn away
V=(k*P*x)/(3*H)
mprintf("V = %f mm^3",V)
//As the volume of a hemisphere is (1/12)*pi*d^3
a=12; //volume of hemisphere
d=nthroot(((a*V)/%pi),3)
mprintf("\nd = %f mm ",d)
