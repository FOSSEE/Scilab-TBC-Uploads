clc;
p=1.5;      //in inch
m=3;      //magnification
q=-m*p;     //calculating image distance
disp(q,"Distance of image in inch = ");    //displaying result
f=(p*q)/(p+q);      //calculating focal length
disp(f,"Focal Length in inch = ");   //displaying result