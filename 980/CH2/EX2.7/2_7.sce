clc;
clear;
format('v',6);
r0=[1,0,0];                                                                     //Position vector ro
r1=[0,1,0];                                                                     //Position vector r1
r2=[0,0,1];                                                                     //Position vector r2
R1=r1-r0;                                                                       //Postion vector from ro to r1
R2=r2-r0;                                                                       //Position vector from ro to r2
u1=R1(1,2)*R2(1,3)-R1(1,3)*R2(1,2);
u2=R1(1,3)*R2(1,1)-R1(1,1)*R2(1,3);
u3=R1(1,1)*R2(1,2)-R1(1,2)*R2(1,1);
R=[u1,u2,u3];                                                                   //Vector R perpendicular to the plane
mod_R=sqrt((u1)^2+(u2)^2+(u3)^2);                                               //Magnitude of the vector R
unit_R=R/mod_R;                                                                 //Unit vector along R
disp(unit_R,'The unit vector perpendicular to the given plane is')
