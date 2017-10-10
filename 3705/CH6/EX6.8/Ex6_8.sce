
clear//

//Variable Declaration
x1=16*3**-1 //Centroid of the triangle in ft
x2=3 //Centroid of the lower parabola in ft
x3=6 //Centroid of the rectangle in ft
x4=20*3**-1 //Centroid of the triangle in ft
//Moment values
M1=4800 //Moment in lb.ft
M2=14400 //Moment in lb.ft

//Calcualtions
P=((3**-1*4*M1*x2)+(4*M1*x3)+(0.5*4*M1*2*x4))*(x1*8*8*0.5)**-1 //Force P in lb

//Result
printf("\n The magnitude of force P is %0.1f lb",P)
