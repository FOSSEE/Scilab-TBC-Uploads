clc;
clear;
format('v',11);
r0=[1,1,1];                                                                     //Vector ro
r1=[1,2,3];                                                                     //Vector r1
//Displaying the given points in vectorial form
disp(r0,'The given two points are: ro=');
disp(r1,'r1=');
R=r1-r0;
modR=sqrt(R(1)^2+R(2)^2+R(3)^2);                                                //Distance between the two given points
unit_R=R/modR;                                                                  //Unit vector along the vector from ro towards r1
p1=5*unit_R+r0;                                                                 //Point at 5cm from ro towards r1
disp(p1,'The point at distance of 5cm away from r0 and towards r1 is:p1= ');
p2=-5*unit_R+r0;
disp(p2,'The point at distance of 5cm away from r0 and away from r1 is:p2=');   //Point at 5cm from ro and away from r1
disp('Equation of the line passing through the given points:r=t(r1-r0)+r0');
disp('to find the intersection of this line with X-Y plane:z=0');
t=-1*sqrt(5)/2; 
disp(t,'The value of the parameter t=');                                        //Displaying the equation of the line
//Computing the location of the point of intersection
x=t*unit_R(1)+r0(1);
y=t*unit_R(2)+r0(2);
p1=[x,y,0];                                                                     // Point of intersaction with X-Y plane
disp(p1,'The point of intersection with X-Y plane:p1=');                        
disp('to find the intersection with x-z plane:y=0');
t=-1*sqrt(5);                                                                   //The value of the parameter t
disp(t,'The value of the parameter t=');
x=t*unit_R(1)+r0(1);
z=t*unit_R(3)+r0(3);
p2=[x 0 z];                                                                     //Point of intersection with X-Z plane     
disp(p2,'The point of intersection with X-Z plane:p2=');        
disp('to find the intersection with y-z plane:x=0');
disp('as we are getting 0=1,we can say that the line does not intersect with the Y-Z plane');

