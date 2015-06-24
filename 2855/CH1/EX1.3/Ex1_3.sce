




//given 
//page no 5 
clc;
clear;
n1=1;                   //refractive index of air
n2=1.56;                //refractive index of medium
w1=60;      //in deg C
//using snell's law
a= n1*sind(w1)/n2;             //a=sin(w1)
w2=asind(a);                   //in degree
printf("Angle of refraction is %0.2f degree\n ",w2);
B=w1-w2;                         //in degree
printf("Angle of deviation is %0.1f degree\n ",B)
// The answer doesn't match because of priting errorsin calculation as sin(608)
