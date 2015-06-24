clc;
v0=20;    //velocity in ft/sec
g=32;     //gravitational constant in ft/sec
t=2;      //time in sec
v=v0+(g*t);    //kinematical equation
disp(v,"Velocity in ft/sec = ");        //displaying result
s=(v0*t)+(1/2)*g*t*t;     //kinematical equation
disp(s,"Distance in ft = "); //displaying result