clc;
w1=40000;           //weight in lb
dga=0.08;           //density in lb/ft cube
dgh=0.011;          //density in lb/ft cube
v=w1/(dga-dgh);     //calculating volume
disp(v,"Volume in ft cube = "); //displaying result
