//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 46

clc;
disp("CHAPTER 2");
disp("EXAMPLE 46");

//VARIABLE INITIALIZATION
I=120-(%i*(50));                //in Amperes
v=8+(%i*(2));                   //in Volts

//SOLUTION

//function to convert from rectangular form to polar form
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[v,angle_v]=rect2pol(real(v),imag(v));
[I,angle_I]=rect2pol(real(I),imag(I));

//solution (i)
z=v/I;
angle_z=angle_v-angle_I;
disp(sprintf("(i) The impedance is %f Ω, %f degrees",z,angle_z));

//solution (ii)
phi=angle_z;
pf=cos(phi*(%pi/180));
disp(sprintf("(ii) The power factor is %f (lagging)",pf));

//solution (iii)
s=v*I; 
angle_s=angle_v-angle_I; 
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));   //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[p,q]=pol2rect(s,angle_s);
disp(sprintf("(iii) The power consumed is %f W",p));
disp(sprintf("      The reactive power is %f VAR",q));

//END
