clc;
hd=5;     //in mm
h=2;      //in mm
f=6;      //in cm
m=hd/h;   //calculating magnification
p=((m-1)/m)*f;       //lens formula
disp(p,"Distance in cm = ");   //displaying result
q=-m*p;      //lens formula
disp(q,"Image distance in cm = ");   //displaying result
