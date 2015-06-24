clc;
F=130;  //force in lb
r=1;    //radius in inch
A=%pi*r*r;  //calculating Area using area=pi*r*r in in square
p=F/A;      //calculating pressure in lb/in square using p=F/area
disp(p,"Pressure exerted on ground in lb/in square = ");  //displaying result.
disp(p/14.7,"Times greater than atmospheric pressure.");  //displaying result.