clc;
s=90;     //distance in m
u=0;      //initial velocity in m/sec
t=sqrt(90/4.9);    //calculating time using kinematical equation
t1=4.56-t;      //calculating time taken by sound to travel
v=s/t1;      //calculating velocity
disp(v,"Velocity in m/sec = ");  //displaying result