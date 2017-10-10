//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 16

disp("CHAPTER 2");
disp("EXAMPLE 16");

//VARIABLE INITIALIZATION
r1=5;                          //in Ohms
r2=10;                         //in Ohms
L1=0.04;                       //in Henry
L2=0.05;                       //in Henry
v=200;                         //in Volts
f=50;                          //in Hertz

//SOLUTION

//solution (i)
xl1=L1*(2*%pi*f);
xl2=L2*(2*%pi*f);
z1=r1+(%i*xl1);
z2=r2+(%i*xl2);
//function to convert from rectangular form to polar form
function [z,angle]=rect2pol(x,y);
z=sqrt((x^2)+(y^2));           //z is impedance & the resultant of x and y
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[z1,angle1]=rect2pol(r1,xl1);
[z2,angle2]=rect2pol(r2,xl2);
Y1=1/z1;                       //admittance
Y2=1/z2;
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[G1,B1]=pol2rect(Y1,angle1);
[G2,B2]=pol2rect(Y2,angle2);
disp("......................................");
disp("SOLUTION (i)");
disp(sprintf("Conductance of 1st coil is %f S",G1));
disp(sprintf("Conductance of 2nd coil is %f S",G2));
disp(" ");
disp(sprintf("Susceptance of 1st coil is %f S",B1));
disp(sprintf("Susceptance of 2nd coil is %f S",B2));
disp(" ");
disp(sprintf("Admittance of 1st coil is %f S",Y1));
disp(sprintf("Admittance of 2nd coil is %f S",Y2));
disp("......................................");

//solution (ii)
G=G1+G2;
B=B1+B2;
[Y,angle]=rect2pol(G,B); 
I=v*Y;
pf=cos((angle)*(%pi/180));
disp("SOLUTION (ii)");
disp(sprintf("Total current drawn by the circuit is %f A, %f degrees",I,-angle));
disp(sprintf("Power factor of the circuit is %f (lagging)",pf));
disp("......................................");

//solution (iii)
p=v*I*pf;
disp("SOLUTION (iii)");
disp(sprintf("Power absorbed by the circuit is %f kW",p/1000));
disp("......................................");

//solution (iv)
z=v/I;
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[r,x]=pol2rect(z,angle);
L=x/(2*%pi*f);
disp("SOLUTION (iv)");
disp(sprintf("Resitance of single coil is %f Ω",r));
disp(sprintf("Inductance of single coil is %f H",L));
disp("......................................");

//END
