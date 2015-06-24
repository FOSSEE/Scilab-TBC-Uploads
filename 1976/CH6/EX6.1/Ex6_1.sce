
// To determine the distance of a 25 cp lamp for various illumination
//Page 327
clc;
clear;

//Candle power of the lamp
I=25;

// Various illumination levels
E1=5;       //Case1
E2=15;      //Case2
E3=8;       //Case3

// According to the law of illumination  E = I/(r^2);
// Using the above equation we find the distances for the above three illuminations

r1= sqrt(I/E1);
r2= sqrt(I/E2);
r3= sqrt(I/E3);

printf('a) The distance for %g flux illumination from the normally placed screen is %g m \n',E1,r1)
printf('b) The distance for %g flux illumination from the normally placed screen is %g m \n',E2,r2)
printf('c) The distance for %g f.c illumination from the normally placed screen is %g ft \n',E3,r3)



