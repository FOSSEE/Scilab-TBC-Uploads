clc;
p=30;      //in cm
f=15;      //in cm
q=(p*f)/(p-f);     //calculating image distance
disp(q,"Distance of image in cm = ");    //displaying result
h=8;      //in cm
hd=(-h*q)/p;     //calculating diameter
disp(hd,"Diameter in cm = ");   //displaying result