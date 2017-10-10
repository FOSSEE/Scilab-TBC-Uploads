//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 19

clc;
disp("CHAPTER 2");
disp("EXAMPLE 19");

//VARIABLE INITIALIZATION
z1=4+(%i*3);                     //impedance in rectangular form in Ohms
z2=6-(%i*8);                     //impedance in rectangular form in Ohms
z3=1.6+(%i*7.2);                 //impedance in rectangular form in Ohms
v=100                            //in volts
//SOLUTION

//SOLUTION (i)

//Y1 and Y2 are admittances of each parallel branch
Y1=1/z1;
Y2=1/z2;
disp("SOLUTION (i)");
disp(sprintf("Admittance parallel branch 1 is %3f %3fj S", real(Y1), imag(Y1)));
disp(sprintf("Admittance parallel branch 2 is %3f+%3fj S", real(Y2), imag(Y2)));
disp(" ");

//SOLUTION (ii)

z=z3+(z2*z1)/(z1+z2)              //series and parallel combination of impedances
disp("SOLUTION (ii)");
disp(sprintf("Total circuit impedance is %3f %3fj S", real(z), imag(z)));
//solution given in the book is wrong as j(7.2+0.798) cannot be equal to j11.598

//SOLUTION (iii)

I=v/z;
function [Z,angle]=rect2pol(x,y); //function 'rect2pol()' converts impedance in rectangular form to polar form
Z=sqrt((x^2)+(y^2));             //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);        //to convert the angle from radians to degrees
endfunction;
[Z, angle]=rect2pol(real(I), imag(I));
//disp(sprintf("%f, %f",z,angle));
//disp(sprintf("%f, %f",real(I), imag(I)));
pf=cos(angle*%pi/180);
disp("SOLUTION (iii)");
disp(sprintf("The power factor is %f",pf));

//SOLUTION (iv)

P=v*real(I)*pf;                   //power supplied by source is either (VI cosΦ) or (I^2 . R)
disp("SOLUTION (iv)");
disp(sprintf("The power supplied by source is %f watt",P));
//END