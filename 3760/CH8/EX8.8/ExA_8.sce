clc;
l=0.8; // length of conductor
B=1.2; // flux density of uniform magnetic field
v=30; // speed of conductor
disp('case a');
// conductor motion is normal to field flux
theta=90; // angle between direction of motion and field flux
e=B*l*v*sin(theta*(%pi/180)); 
printf('EMF induced is %f V\n',e);
disp('case b');
// conductor motion is at an angle of 30 degrees from direction of field 
theta=30; // angle between direction of motion and field flux
e=B*l*v*sin(theta*(%pi/180)); 
printf('EMF induced is %f V\n',e);
disp('case c');
// conductor motion is parllel to field flux
theta=0; // angle between direction of motion and field flux
e=B*l*v*sin(theta*(%pi/180)); 
printf('EMF induced is %f V\n',e);
