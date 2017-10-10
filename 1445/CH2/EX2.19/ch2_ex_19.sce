//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 19

disp("CHAPTER 2");
disp("EXAMPLE 19");

//VARIABLE INITIALIZATION
z1=4+(%i*3);                    //impedance in rectangular form in Ohms
z2=6-(%i*8);                    //impedance in rectangular form in Ohms
z3=1.6+(%i*7.2);                //impedance in rectangular form in Ohms
v=100                           //in volts
//SOLUTION

//solution (i)
//Admittance of each parallel branch Y1 and Y2
Y1=1/z1;
Y2=1/z2;
disp("SOLUTION (i)");
disp(sprintf("Admittance parallel branch 1 is %3f %3fj S", real(Y1), imag(Y1)));
disp(sprintf("Admittance parallel branch 2 is %3f+%3fj S", real(Y2), imag(Y2)));
disp(" ");

//solution (ii)
//Total circuit impedance Z=(Z1||Z2)+Z3
z=z3+(z2*z1)/(z1+z2)
disp("SOLUTION (ii)");
disp(sprintf("Total circuit impedance is %3f %3fj S", real(z), imag(z)));
//solution in the book is wrong as there is a total mistake in imaginery part 7.2+0.798=11.598
//
//solution (iii)
//Supply current I=V/Z
i=v/z;
function [z,angle]=rect2pol(x,y);
z0=sqrt((x^2)+(y^2));            //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);      //to convert the angle from radians to degrees
endfunction;
[z, angle]=rect2pol(real(i), imag(i));
//disp(sprintf("%f, %f",z,angle));
//disp(sprintf("%f, %f",real(i), imag(i)));
pf=cos(angle*%pi/180);

disp("SOLUTION (iii)");
disp(sprintf("The power factor is %f",pf));
//solution (iv)
//Power supplied by source = VI cosΦ or I^2 . R
P=v*real(i)*pf;

disp("SOLUTION (iv)");
disp(sprintf("The power supplied by source is %f watt",P));
//END
