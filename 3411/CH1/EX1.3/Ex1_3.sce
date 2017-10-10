//Example 1.3
clc();
clear;
//To compare the intensity at a point distance 1mm from the center to that at its center and to find minimum dist from center of point 
//Path difference=(Y*d)/D
y=1     //units in mm
y=y*10^-3     //units in mts
D=1      //units in mts
d=1     //units in mm
d=d*10^-3      //units in mts
pathdifference=(y*d)/D         //units in mts
lamda=5893     //units in armstrongs
lamda=lamda*10^-10    //units in mts
phasedifference=(2*pathdifference)/lamda           //units in pi radiand
ratioofintensity=(cos((phasedifference/2)*%pi))^2   //units in 
printf("The ratio of intensity with central maximum is %.4f\n",ratioofintensity)
pathdifference=lamda/4
distance=(pathdifference*D)/d        //units in mts
printf("The Distance of the point on the screen from center is %fmts",distance)
