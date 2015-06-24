//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 48

disp("CHAPTER 2");
disp("EXAMPLE 48");

//VARIABLE INITIALIZATION
pf1=0.8;                       //power factor of 1st circuit
pf2=0.6;                       //power factor of 2nd circuit
z=1;                           //this is an assumption

//SOLUTION
//convert polar to rectangular form
angle1=acos(pf1)*(180/%pi);    //in degrees
angle2=acos(pf2)*(180/%pi);    //in degrees 
//function to convert from polar form to rectangular form
function [x,y]=pol2rect(mag,angle);
x=mag*cos(angle*(%pi/180));    //to convert the angle from degrees to radians
y=mag*sin(angle*(%pi/180));
endfunction;
[z1_x,z1_y]=pol2rect(z,angle1);
[z2_x,z2_y]=pol2rect(z,angle2);
nr=angle1+angle2;              //numerator
z_x=z1_x+z2_x;
z_y=z1_y+z2_y;

//function to convert from rectangular form to polar form
function [z,angle]=rect2pol(x,y);
I=sqrt((x^2)+(y^2));         
angle=atan(y/x)*(180/%pi);     //to convert the angle from radians to degrees
endfunction;
[z,angle]=rect2pol(z_x,z_y);
angle_z=nr-angle;
pf=cos(angle_z*(%pi/180));
disp(sprintf("The power factor of the combination is %.3f",pf));

//END
