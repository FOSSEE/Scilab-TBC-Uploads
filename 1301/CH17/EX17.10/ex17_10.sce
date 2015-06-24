clc;
hd=-36;    //in inch
h=2;       // in inch
m=hd/h;    //calculating magnification
q=-15;    //in ft
p=-q/m;      //in ft
f=(p*q)/(p+q);     //calculating focal length
disp(f,"Focal Length in ft = ");    //displaying result
