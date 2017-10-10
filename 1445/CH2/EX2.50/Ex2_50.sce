//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 50

clc;
disp("CHAPTER 2");
disp("EXAMPLE 50");

//VARIABLE INITIALIZATION
z1=6+(%i*5);                   //impedance in Ohms
z2=8-(%i*6);                   //impedance in Ohms
z3=8+(%i*10);                  //impedance in Ohms
I=20;                          //in Amperes

//SOLUTION
Y1=1/z1;
Y2=1/z2;
Y3=1/z3;
Y=Y1+Y2+Y3;
//function to convert from rectangular form to polar form
function [Y,angle]=rect2pol(x,y);
Y=sqrt((x^2)+(y^2));           
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[Y_tot,angle]=rect2pol(real(Y),imag(Y));
v=I/Y_tot;
angle_v=-angle;
[z1,angle1]=rect2pol(real(z1),imag(z1));
[z2,angle2]=rect2pol(real(z2),imag(z2));
[z3,angle3]=rect2pol(real(z3),imag(z3));
I1=v/z1;
angle_I1=angle_v-angle1;
I2=v/z2;
angle_I2=angle_v-angle2;
I3=v/z3;
angle_I3=angle_v-angle3;
disp("The current in each branch in polar form is-");
disp(sprintf(" %f A, %f degrees",I1,angle_I1));
disp(sprintf(" %f A, %f degrees",I2,angle_I2));
disp(sprintf(" %f A, %f degrees",I3,angle_I3));

//END
