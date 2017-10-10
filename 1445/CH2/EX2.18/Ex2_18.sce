//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 18

clc;
disp("CHAPTER 2");
disp("EXAMPLE 18");

//VARIABLE INITIALIZATION
r=10;                            //in Ohms
v=200;                           //in Volts
f=50;                            //in Hertz
I=10;                            //in Amperes
rc=2;                            //resistance of coil in Ohms

//SOLUTION

//solution (i)
z=v/I;
xl=sqrt((z^2)-((r+rc)^2));
L=xl/(2*%pi*f);
disp(sprintf("(i) The inductance of the coil is %f H",L));

//solution (ii)
pf=(r+rc)/z;
disp(sprintf("(ii) The power factor is %f",pf));

//solution (iii)
vl=I*(rc+(%i*xl));
function [mag,angle]=rect2pol(x,y);//function 'rect2pol()' converts voltage in rectangular form to polar form
mag=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[vl,angle_vl]=rect2pol(real(vl),imag(vl));
disp(sprintf("(iii) The voltage across the coil is %f V, %f degrees",vl,angle_vl));

//END
