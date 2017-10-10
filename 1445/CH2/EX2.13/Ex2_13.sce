//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 13

clc;
disp("CHAPTER 2");
disp("EXAMPLE 13");

//VARIABLE INITIALIZATION
z=1+(%i*1);                        //load impedance in rectangular form in Ohms
v=20*sqrt(2);                      //amplitude of rms value of voltage in Volts

//SOLUTION
function [zp,angle]=rect2pol(x,y); //function 'rect2pol()' converts impedance in rectangular form to polar form
zp=sqrt((x^2)+(y^2));              //z= (x) + j(y)= (1)+ j(1); 'zp' is in polar form
angle=atan(y/x)*(180/%pi);         //to convert the angle from radians to degrees
endfunction;

//solution (i)
[zp,angle]=rect2pol(1,1);          //since x=1 and y=1
v=v/sqrt(2);
angle_v=100;                       //v=(20/sqrt(2))*sin(ωt+100)
I=v/zp;                            //RMS value of current
angle_I=angle_v-angle;
Im=I*sqrt(2);
disp(sprintf("(i) The current in load is i = %d sin(ωt+%d) A",Im,angle_I));

//solution (ii)
p=(v/sqrt(2))*(I*sqrt(2))*cos(angle*(%pi/180));
disp(sprintf("(ii) The real power is %f W",p));

//solution (iii)
pa=(v/sqrt(2))*(I*sqrt(2));
disp(sprintf("(ii) The apparent power is %f VAR",pa));

//END



