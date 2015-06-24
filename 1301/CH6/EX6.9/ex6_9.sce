clc;
m1=40;    //weight in kg
m2=60;    //weight in kg
v1=4;     //speed in m/sec
v2=2;     //speed in m/sec
v3=((m1*v1)+(m2*v2))/(m1+m2);  //calculating v3 using law of conservation of momentum
disp(v3,"Final velocity in m/sec = ");  //displaying result
inKE=(1/2)*(m1*v1*v1)+(1/2)*(m2*v2*v2);  //calculating initial KE in Joules
fiKE=(1/2)*(m1+m2)*v3*v3;  //calculating final KE in Joules
disp(inKE-fiKE,"Kinetic Energy lost in Joules = ");  //displaying result.