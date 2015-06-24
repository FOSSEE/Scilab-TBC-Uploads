clc;
p=100;      //in cm
f=40;      //in cm
q=(p*f)/(p-f);     //calculating image distance
disp(q,"Distance of image in cm = ");    //displaying result
h=6;      //in cm
hd=(-h*q)/p;     //calculating diameter
disp(hd,"Diameter in cm = ");   //displaying result