clc;
p=1.5;      //in inch
f=0.15;        //in metre
w=(p*f)/(p-f);      //calculating focal length
disp(w*10^3,"Length in mm = ");   //displaying result