//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 2

disp("CHAPTER 7");
disp("EXAMPLE 2");

//VARIABLE INITIALIZATION
v1=400;                         //primary voltage in Volts
v2=200;                         //secondary voltage in Volts
I0=1;                           //in Amperes
pf1=0.4;                        //power factor in degrees 
I2=50;                          //secondary current in Amperes
pf2=0.8;                        //lagging power factor in degrees

//SOLUTION

//function to convert from polar to rectangular form
function [x,y]=pol2rect(mag,angle1);
x=mag*cos(angle1);
y=mag*sin(angle1);
endfunction;

phi_0=acos(pf1);
phi=acos(pf2);       
I2_dash=(v2*I2)/v1; 
[x0,y0]=pol2rect(I0,-phi_0); 
[x2_dash,y2_dash]=pol2rect(I2_dash,-phi); 
I1_x=x0+x2_dash;                //x-component of I1
I1_y=y0+y2_dash;                //y-component of I1
disp(sprintf("The primary current in reactangular form is (%f-j%f) A",I1_x,-I1_y));

//END
