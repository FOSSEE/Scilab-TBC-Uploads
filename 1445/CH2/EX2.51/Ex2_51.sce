//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 51

disp("CHAPTER 2");
disp("EXAMPLE 51");
//
//Given
// admittance of branches are:
//Y1=0.4+j0.6
//Y2=0.1+j0.4
//Y3=0.06+j0.23
//
//VARIABLE INITIALIZATION
Y1=0.4+(%i*0.6);               //admittance of 1st branch in Siemens
Y2=0.1+(%i*0.4);               //admittance of 2nd branch in Siemens
Y3=0.06+(%i*0.23);             //admittance of 3rd branch in Siemens

//SOLUTION
Y=Y1+Y2+Y3;                    // total admittance
//function to convert from rectangular form to polar form
function [Y,angle]=rect2pol(x,y);
Y=sqrt((x^2)+(y^2));           
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[Y,angle]=rect2pol(real(Y),imag(Y));
disp(sprintf("The total admittance of the circuit is %.3f S, %.2f degrees",Y,angle));
z=1/Y;
disp(sprintf("The impedance of the circuit is %.3f Ω, %.2f degrees",z,-angle));
//
//END
