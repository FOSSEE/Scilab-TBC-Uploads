clc//
//
//

//Variable declaration
a1=4*10^-3;      //diameter(m)
a2=6*10^-3;      //diameter(m)
d1=1;     //distance(m)
d2=2;     //distance(m)

//Calculation
theta=(a2-a1)/(2*(d2-d1));     //divergence(radian)

//Result
printf("\n divergence is %0.3f milli radian",theta*10^3)
