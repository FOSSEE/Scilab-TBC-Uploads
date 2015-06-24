//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 10

disp("CHAPTER 2");
disp("EXAMPLE 10");

//Equations
//If z1, z2 || then net impedance is Z=z1.z2/(z1+z2)
//V=IZ
//Power drawn is = V.I. cos (phi)

//VARIABLE INITIALIZATION
v=230;                           //in Volts
z1=3+(%i*4);                     //impedance in rectangular form in Ohms
z2=6+(%i*8);                     //impedance in rectangular form in Ohms

//SOLUTION
function [z,angle]=rect2pol(x,y);
z=sqrt((x^2)+(y^2));             //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);       //to convert the angle from radians to degrees
endfunction;

[z1,angle1]=rect2pol(3,4);
[z2,angle2]=rect2pol(6,8);

z=(z1*z2)/(z1+z2); 
I=v/z;
angle=-angle1;                   //as angle1=angle2
//
disp(sprintf("The current drawn from the circuit is %2.0f Amp",I));
disp(sprintf("The net current lags net voltage by %4.2f and ckt is inductive in nature",-angle));
p=v*I*cos(angle*%pi/180);        //to convert the angle from degrees to radians
disp(sprintf("The power drawn from the source is %5.3f kW",p/1000));

//END
