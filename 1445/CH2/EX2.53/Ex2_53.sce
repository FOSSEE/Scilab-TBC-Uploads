//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 53 Read Example 52 of the Text Book

clc;
disp("CHAPTER 2");
disp("EXAMPLE 53");

//VARIABLE INITIALIZATION
v=230;                         //in Volts
angle_v=30;                    //in degrees
I1=20;                         //in Amperes
angle_I1=60;                   //in degrees
I2=40;                         //in Amperes
angle_I2=-30;                  //in degrees

//SOLUTION
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[x1,y1]=pol2rect(I1,angle_I1);
[x2,y2]=pol2rect(I2,angle_I2);
X=x1+x2;
Y=y1+y2;

//function to convert from rectangular form to polar form
function [I,angle]=rect2pol(x,y);
I=sqrt((x^2)+(y^2));           
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[I,angle]=rect2pol(X,Y);

//solution (i)
z=v/I;
angle_z=angle_v-angle;
disp(sprintf("(i) The total impedance of the circuit is %f Ω, %f degrees",z,angle_z));

//solution (ii)
//disp(sprintf("The value of I is %f and angle is %f",I, angle_z));
pf=cos(angle_z*(%pi/180));
p=v*I*pf;
disp(sprintf("(ii) The power taken is %f W",p));
//END
