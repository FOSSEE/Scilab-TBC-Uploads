//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 2

clc;
disp("CHAPTER 7");
disp("EXAMPLE 2");
//
//400/200V transformer
//VARIABLE INITIALIZATION
v1=400;                         //primary voltage in Volts
v2=200;                         //secondary voltage in Volts
I0=1;                           //in Amperes
pf1=0.4;                        //power factor in degrees  on no load
I2=50;                          //secondary current in Amperes
pf2=0.8;                        //secondary supplies lagging power factor in degrees

//SOLUTION
//primary current is given by
//I1=I0+I2
//function to convert from polar to rectangular form
function [x,y]=pol2rect(mag,angle1);
x=mag*cos(angle1);
y=mag*sin(angle1);
endfunction;
//
phi_0=acos(pf1);                // cosine inverse of the power factor which is given
phi=acos(pf2);                  // cosine inverse of the power factor which is given
I2_dash=(v2*I2)/v1;             //v1.i1=v2.i2
//I0=1 < phi_0 in polar format
[x0,y0]=pol2rect(I0,-phi_0); 
[x2_dash,y2_dash]=pol2rect(I2_dash,-phi); 
I1_x=x0+x2_dash;                //x-component of I1
I1_y=y0+y2_dash;                //y-component of I1
disp(sprintf("The primary current in reactangular form is (%.3f-j%.2f) A",I1_x,-I1_y));
//
//function to convert from rectangular form to polar form
function [I,angle]=rect2pol(x,y);
I=sqrt((x^2)+(y^2));           
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[I,angle]=rect2pol(I1_x,I1_y);        // converting current from rectangular to polar form
disp(sprintf("The primary current in polar form is (%.3f <%.2f) A",I,angle));
//END
