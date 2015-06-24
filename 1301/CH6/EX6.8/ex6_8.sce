clc;
mm=70;  //weight in of man kg
ms=0.5; //weight of snow-ball in kg
v1=20;  //man's initial velocity in m/sec
v2=(ms/(mm+ms))*v1;  //calculating v2 using law of conservation of momentum
disp(v2,"Mans final velocity in m/sec = ");  //displaying result