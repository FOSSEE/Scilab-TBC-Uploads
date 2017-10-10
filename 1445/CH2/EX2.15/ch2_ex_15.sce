//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 15

disp("CHAPTER 2");
disp("EXAMPLE 15");

//VARIABLE INITIALIZATION
I=2;                          //in Amperes
angle_I=60;                   //in degrees
v1=200;                       //in Volts
f=50;                        //in Hertz

//SOLUTION
z1=v1/I;               
disp(sprintf("The impedance is %d Ω, %d degrees",z1,angle_I));
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));   //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[r,x1]=pol2rect(z1,angle_I);
disp(sprintf("The resistance is %d Ω",r));
L=x1/(2*%pi*f);
disp(sprintf("The inductance is %f H",L));

v2=100;
f2=25;
x2=2*%pi*f2*L;
z2=sqrt((r^2)+(x2^2)); 
angle=atan(x2/r); 
I1=v2/z2;
p=v2*I1*cos(-angle);
disp(sprintf("The power consumed is %f W",p));

//Answer may be slightly different due to precision of floating point numbers

//END


