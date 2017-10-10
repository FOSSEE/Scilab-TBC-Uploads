clc;
disp('case a');
f1=2/3; // fraction of slot wound 
p1=f1*180; // phase spread , 2/3 of the slots are wound
kd1=sin((p1/2)*(%pi/180))/((p1/2)*(%pi/180)); // distribution factor
p2=180; // phase spread , All the slots are wound
f2=1; // fraction of slot wound 
kd2=sin((p2/2)*(%pi/180))/((p2/2)*(%pi/180)); // distribution factor
// output is directly proportional to the product of fraction of slots wound and distribution factor 
ro=(f2*kd2)/(f1*kd1); // It is assumed that frequency ,flux per pole and the conductor cross section is same
printf('Ratio of outputs is %f \n',ro);
rc=f2/f1; 
printf('ratio of copper required is %f\n',rc);
disp('case b'); 
p3=60; // for 3-phase winding ,phase spread is 60 degrees
kd3=sin((p3/2)*(%pi/180))/((p3/2)*(%pi/180)); // distribution factor
// since all the slots are wound for both 1-phase and 3-phase, fraction of the slots wound is 1
f3=1; // fraction of the slots wound
ro=kd3/kd2;
printf('Ratio of outputs is %f \n',ro);
rc=f2/f3;
printf('ratio of copper required is %f\n',rc);
disp('case c');
f4=1; // fraction of the slots wound
p4=90; // for 2-phase winding ,phase spread is 90 degrees
kd4=sin((p4/2)*(%pi/180))/((p4/2)*(%pi/180)); // distribution factor
ro=kd3/kd4;
printf('Ratio of outputs is %f \n',ro);
rc=f3/f4;
printf('ratio of copper required is %f\n',rc);
