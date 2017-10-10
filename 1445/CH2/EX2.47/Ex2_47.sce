//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 47

clc;
disp("CHAPTER 2");
disp("EXAMPLE 47");

//VARIABLE INITIALIZATION
r=10;                          //in Ohms
xl=8.66;                       //in Ohms
I=5-(%i*10);                   //in Amperes

//SOLUTION
z=r+(%i*(xl));
//function to convert from rectangular form to polar form
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[z,angle_z]=rect2pol(real(z),imag(z)); 
[I,angle_I]=rect2pol(real(I),imag(I)); 

//solution(i)
v=I*z;
angle_v=angle_I+angle_z;
disp(sprintf("(i) The applied voltage is %f V, %f degrees",v,angle_v));

//solution (ii)
phi=angle_I-angle_v;
pf=cos(phi*(%pi/180));
disp(sprintf("(ii) The power factor is %f (lagging)",pf));

//solution(iii)
s=v*I;
angle_s=angle_v-angle_I;
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));  //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[p,q]=pol2rect(s,angle_s);
disp(sprintf("(iii) The active power is %f W",p));
disp(sprintf("      The reactive power is %f VAR",q));

//END
