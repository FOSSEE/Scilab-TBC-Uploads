clc;
p=12;      //in ft
f=-2;      //in ft
q=(p*f)/(p-f);     //calculating image distance
disp(q,"Distance of image in ft = ");    //displaying result
m=-q/p;      //calculating magnification
disp(m,"Magnification = ");   //displaying result