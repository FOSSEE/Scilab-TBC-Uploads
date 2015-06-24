clc;
p1=300+15;        //absolute pressure in lb/in square
p2=15;            //pressure in lb/in square
v1=3;             //volume in ft cube
v2=(p1*v1)/p2;    //calculating v2 using Boyle's law at const. temp.
disp(v2,"Volume in ft cube = ");    //displaying result.
disp(v2-43,"Additional Volume of air in ft cube = ");  //displaying result.