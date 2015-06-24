clc;
p=24;      //in inch
f=16;      //inch
q=(p*f)/(p-f);     //calculating image distance
disp(q,"Distance of image in inch = ");    //displaying result
h=3;      //inch
hd=(-h*q)/p;     //calculating diameter
disp(hd,"Diameter in inch = ");   //displaying result