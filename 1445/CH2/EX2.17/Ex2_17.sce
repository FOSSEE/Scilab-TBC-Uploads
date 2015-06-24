//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 17

disp("CHAPTER 2");
disp("EXAMPLE 17");


//Given
//AC Voltage e(t)=141.4.sin (120.t) 
//Current in the circuit is
//i(t)=14.14.sin (120.t+7.07.cos (120.t+30)

//VARIABLE INITIALIZATION
e=141.4;                             //in Volts
E=141.4/sqrt(2);                     //in Volts
angle_E=0;                           //in degrees
//i(t)=(14.14<0)+(7.07<120)
i1=14.14;                            //in Amperes         
angle_i1=0;                          //in degrees
i2=7.07;                             //in Amperes
angle_i2=120;                        //in degrees

//SOLUTION
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));          //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[i1_x,i1_y]=pol2rect(i1,angle_i1);
[i2_x,i2_y]=pol2rect(i2,angle_i2);
i=(i1_x+i2_x)+(%i*(i1_y+i2_y));
//function to convert from rectangular form to polar form
function [mag,angle]=rect2pol(x,y);
mag=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);           //to convert the angle from radians to degrees
endfunction;
[I,angle_I]=rect2pol((i1_x+i2_x),(i1_y+i2_y));
I=I/sqrt(2);

//solution (i)
z=E/I;
angle_z=angle_E-angle_I;
[r,xc]=pol2rect(z,angle_z);
f=50;
c=1/(2*%pi*f*(-xc));
disp(sprintf("(i) The value of resistance is %5.3f Ω",r));
disp(sprintf("    The value of capacitance is %6.4f μF",c*10^6));

//solution (ii)
pf=cos(angle_z*(%pi/180));
disp(sprintf("(ii) The power factor is %4.3f ",pf));

//solution (iii)
p=E*I*pf;
disp(sprintf("(iii) The power absorbed by the source is %d W",p));

//END
